import 'package:injectable/injectable.dart';
import 'package:wori_app/core.dart';

@Injectable(as: ConversationRepository)
class ConversationRepositoryImpl implements ConversationRepository {
  final ConversationRemoteDataSource remoteDataSource;

  ConversationRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<ConversationEntity>> fetchConversations() {
    return remoteDataSource.fetchConversations();
  }

  @override
  Future<String> checkOrCreateConversation({required String contactId}) {
    return remoteDataSource.checkOrCreateConversation(contactId: contactId);
  }
}
