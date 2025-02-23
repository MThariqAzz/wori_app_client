import 'package:injectable/injectable.dart';
import 'package:wori_app/features/contacts/data/datasource/contact_remote_data_source.dart';
import 'package:wori_app/features/contacts/domain/entity/contact_entity.dart';
import 'package:wori_app/features/contacts/domain/repositories/contact_repository.dart';

@Injectable(as: ContactRepository)
class ContactRepositoryImpl implements ContactRepository {
  final ContactRemoteDataSource contactRemoteDataSource;

  ContactRepositoryImpl({required this.contactRemoteDataSource});

  @override
  Future<String> addContact({required String email}) async {
    return await contactRemoteDataSource.addContact(email: email);
  }

  @override
  Future<List<ContactEntity>> fetchContacts() async {
    return await contactRemoteDataSource.fetchContacts();
  }
}
