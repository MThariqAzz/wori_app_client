import 'package:wori_app/features/contacts/domain/repositories/contact_repository.dart';

class AddContactUseCase {
  final ContactRepository repository;

  AddContactUseCase({required this.repository});

  Future<String> call({required String email}) async {
    // Ubah return type ke String
    return await repository.addContact(email: email);
  }
}
