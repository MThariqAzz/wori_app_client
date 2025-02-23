part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.addContact({
    required String email,
  }) = _Addcontact;

  const factory ContactEvent.fetchContacts() = _Fetchcontacts;

  const factory ContactEvent.checkOrCreate({
    required String contactId,
    required String contactName,
  }) = _CheckOrCreate;
}
