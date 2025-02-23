import 'package:wori_app/features/contacts/domain/entity/contact_entity.dart';
import 'package:wori_app/features/contacts/domain/repositories/contact_repository.dart';

class FetchContactUseCase {
  final ContactRepository repository;

  FetchContactUseCase({required this.repository});

  Future<List<ContactEntity>> call() async {
    return await repository.fetchContacts();
  }
}
