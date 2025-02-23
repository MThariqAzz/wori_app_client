part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial() = _Initial;
  const factory ConversationState.loading() = _Loading;
  const factory ConversationState.loaded({
    required List<ConversationEntity> conversations,
  }) = _Loaded;
  const factory ConversationState.error({required String message}) = _Error;
}
