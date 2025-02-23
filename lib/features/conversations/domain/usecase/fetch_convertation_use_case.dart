import 'package:wori_app/core.dart';

class FetchConversationUseCase {
  final ConversationRepository repository;

  FetchConversationUseCase({required this.repository});

  Future<List<ConversationEntity>> call() async {
    return await repository.fetchConversations();
  }
}
