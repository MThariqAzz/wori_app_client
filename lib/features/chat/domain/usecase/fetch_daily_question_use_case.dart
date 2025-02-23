import 'package:wori_app/core.dart';
import 'package:wori_app/features/chat/domain/entity/daily_question_entity.dart';

class FetchDailyQuestionUseCase {
  final MessageRepository repository;

  FetchDailyQuestionUseCase({required this.repository});

  Future<DailyQuestionEntity> call({required String conversationid}) async {
    return await repository.fetchDailyQuestion(conversationid);
  }
}
