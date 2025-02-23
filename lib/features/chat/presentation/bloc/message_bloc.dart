import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wori_app/core.dart';
import 'package:wori_app/features/chat/domain/entity/daily_question_entity.dart';
import 'package:wori_app/features/chat/domain/usecase/fetch_daily_question_use_case.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

@injectable
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final FetchMessageUseCase fetchMessageUseCase;
  final FetchDailyQuestionUseCase fetchDailyQuestionUseCase;
  final SocketService _socketService = SocketService();
  final List<MessageEntity> _messages = [];
  final _storage = const FlutterSecureStorage();

  MessageBloc(
    this.fetchMessageUseCase,
    this.fetchDailyQuestionUseCase,
  ) : super(const MessageState.loading()) {
    on<_LoadMessage>(_onLoadMessage);
    on<_SendMessage>(_onSendMessage);
    on<_ReceiveMessage>(_onReceiveMessage);
    on<_LoadDailyQuestion>(_onLoadDailyQuestion);
  }

  Future<void> _onLoadMessage(
    _LoadMessage event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final messages = await fetchMessageUseCase.call(event.conversationId);
      _messages.clear();
      _messages.addAll(messages);
      emit(MessageState.loaded(messages: List.from(_messages)));

      _socketService.socket.emit('joinConversation', event.conversationId);
      _socketService.socket.on('newMessage', (data) {
        print('step1 - receive : $data');
        add(_ReceiveMessage(message: data));
      });
    } catch (e) {
      print('Error in LoadMessage: $e');
      emit(MessageState.error(error: e.toString()));
    }
  }

  Future<void> _onSendMessage(
    _SendMessage event,
    Emitter<MessageState> emit,
  ) async {
    String userId = await _storage.read(key: 'userId') ?? '';
    print('userId: $userId');

    // Create message payload
    final newMessage = {
      'id': event.conversationId,
      'conversationId': event.conversationId,
      'content': event.content,
      'senderId': userId,
    };

    _socketService.socket.emit('sendMessage', newMessage);
  }

  Future<void> _onReceiveMessage(
    _ReceiveMessage event,
    Emitter<MessageState> emit,
  ) async {
    print('step2 - receive event called');
    final message = MessageModel(
      id: event.message['id'],
      conversationId: event.message['conversationId'],
      senderId: event.message['senderId'],
      senderName: event.message['senderName'] ?? '',
      content: event.message['content'],
      createdAt: DateTime.parse(event.message['createdAt']),
    );

    _messages.add(message);
    emit(MessageState.loaded(messages: List.from(_messages)));
  }

  Future<void> _onLoadDailyQuestion(
    _LoadDailyQuestion event,
    Emitter<MessageState> emit,
  ) async {
    emit(const MessageState.loading());
    try {
      final dailyQuestion = await fetchDailyQuestionUseCase(
          conversationid: event.conversationId); // Fix method call
      emit(MessageState.dailyQuestionLoaded(dailyQuestion: dailyQuestion));
    } catch (e) {
      emit(MessageState.error(error: e.toString()));
    }
  }
}
