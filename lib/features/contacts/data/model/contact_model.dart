import 'package:wori_app/features/contacts/domain/entity/contact_entity.dart';

class ContactModel extends ContactEntity {
  ContactModel({
    required String contactId,
    required String username,
    required String email,
  }) : super(contactId: contactId, username: username, email: email);

  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      contactId: json['id'],
      username: json['username'],
      email: json['email'],
    );
  }
}
