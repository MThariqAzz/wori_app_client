import 'package:wori_app/features/chat/domain/entity/daily_question_entity.dart';
import 'package:wori_app/features/chat/domain/entity/message_entity.dart';

// message_repository.dart
abstract class MessageRepository {
  Future<List<MessageEntity>> fetchMessages(String conversationId);
  Future<void> sendMeeaages(
      MessageEntity message); // Typo: sendMeeaages -> sendMessages

  Future<DailyQuestionEntity> fetchDailyQuestion(String conversationId);
}
