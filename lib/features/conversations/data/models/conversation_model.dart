import 'package:wori_app/features/conversations/domain/entities/conversation_entity.dart';

class ConversationModel extends ConversationEntity {
  ConversationModel({
    required String id,
    required String participantName,
    required String lastMessage,
    required String lastMessageTime,
  }) : super(
          id: id,
          participantName: participantName,
          lastMessage: lastMessage,
          lastMessageTime: lastMessageTime,
        );

  factory ConversationModel.fromJson(Map<String, dynamic> json) {
    return ConversationModel(
      id: json['conversation_id'],
      participantName: json['participant_name'],
      lastMessage: json['last_message'],
      lastMessageTime: json['last_message_time'],
    );
  }
}
