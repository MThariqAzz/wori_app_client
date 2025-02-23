import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wori_app/core.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';
part 'conversation_bloc.freezed.dart';

@injectable
class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  final FetchConversationUseCase fetchConversationUseCase;
  final SocketService _socketService = SocketService();

  ConversationBloc(this.fetchConversationUseCase) : super(_Initial()) {
    on<_Fetch>(_onFetchConversations);
    _InitializeSocketLitener();
  }

  Future<void> _onFetchConversations(
      _Fetch event, Emitter<ConversationState> emit) async {
    emit(_Loading());
    try {
      final conversations = await fetchConversationUseCase.call();
      emit(_Loaded(conversations: conversations));
    } catch (e) {
      emit(_Error(message: e.toString()));
    }
  }

  void _InitializeSocketLitener() {
    try {
      _socketService.socket.on('conversationUpdated', _onConversationUpdated);
    } catch (e) {
      print(e);
    }
  }

  _onConversationUpdated(data) {
    add(_Fetch());
  }
}
