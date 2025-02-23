// message_state.dart
part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = MessageInitial;
  const factory MessageState.loading() = MessageLoading;
  const factory MessageState.loaded({required List<MessageEntity> messages}) =
      MessageLoaded;
  const factory MessageState.error({required String error}) = MessageError;
  const factory MessageState.dailyQuestionLoaded(
      {required DailyQuestionEntity dailyQuestion}) = DailyQuestionLoaded;
}
