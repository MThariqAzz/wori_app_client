part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.loadMessage({
    required String conversationId,
  }) = _LoadMessage;

  const factory MessageEvent.sendMessage({
    required String conversationId,
    required String content,
  }) = _SendMessage;

  const factory MessageEvent.receiveMessage({
    required Map<String, dynamic> message,
  }) = _ReceiveMessage;

  const factory MessageEvent.loadDailyQuestion({
    required String conversationId,
  }) = _LoadDailyQuestion;
}
