import 'package:wori_app/features/chat/domain/entity/message_entity.dart';

class MessageModel extends MessageEntity {
  MessageModel({
    required String id,
    required String conversationId,
    required String senderId,
    required String senderName,
    required String content,
    required DateTime createdAt,
  }) : super(
          id: id,
          conversationId: conversationId,
          senderId: senderId,
          senderName: senderName,
          content: content,
          createdAt: createdAt,
        );

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      id: json['id'],
      conversationId: json['conversationId'],
      senderId: json['senderId'],
      senderName: json['senderName'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}
