import 'package:wori_app/features/contacts/domain/entity/contact_entity.dart';

abstract class ContactRepository {
  Future<List<ContactEntity>> fetchContacts();
  Future<String> addContact(
      {required String email}); // Ubah return type ke String
}
