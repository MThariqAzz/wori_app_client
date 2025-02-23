import 'package:wori_app/features/conversations/domain/entities/conversation_entity.dart';

abstract class ConversationRepository {
  Future<List<ConversationEntity>> fetchConversations();
  Future<String> checkOrCreateConversation({required String contactId});
}
