part of 'contact_bloc.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = Initial;
  const factory ContactState.loading() = Loading;
  const factory ContactState.loaded({
    required List<ContactEntity> contacts,
  }) = Loaded;
  const factory ContactState.error({
    required String message,
  }) = Error;
  const factory ContactState.added() = Added;

  const factory ContactState.conversationReady({
    required String conversationId,
    required String contactName,
  }) = ConversationReady;
}
