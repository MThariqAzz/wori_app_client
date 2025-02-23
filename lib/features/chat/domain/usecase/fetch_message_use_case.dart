import 'package:wori_app/features/chat/domain/entity/message_entity.dart';
import 'package:wori_app/features/chat/domain/repositories/message_repository.dart';

class FetchMessageUseCase {
  final MessageRepository repository;
  FetchMessageUseCase({required this.repository});

  Future<List<MessageEntity>> call(String conversationId) async {
    return await repository.fetchMessages(conversationId);
  }
}
