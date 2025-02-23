import 'package:injectable/injectable.dart';
import 'package:wori_app/features/chat/data/datasource/message_remote_data_source.dart';
import 'package:wori_app/features/chat/domain/entity/daily_question_entity.dart';
import 'package:wori_app/features/chat/domain/entity/message_entity.dart';
import 'package:wori_app/features/chat/domain/repositories/message_repository.dart';

@Injectable(as: MessageRepository)
class MessageRepositoryImpl implements MessageRepository {
  final MessageRemoteDataSource remoteDataSource;

  MessageRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<MessageEntity>> fetchMessages(String conversationId) async {
    return await remoteDataSource.fetchMessages(conversationId);
  }

  @override
  Future<void> sendMeeaages(MessageEntity message) {
    throw UnimplementedError();
  }

  @override
  Future<DailyQuestionEntity> fetchDailyQuestion(String conversationId) async {
    return await remoteDataSource.fetchDailyQuestion(conversationId);
  }
}
