import 'package:wori_app/core.dart';

class CheckOrCreateConversationUseCase {
  final ConversationRepository repository;

  CheckOrCreateConversationUseCase(this.repository);

  Future<String> call({required String contactId}) async {
    return repository.checkOrCreateConversation(contactId: contactId);
  }
}
