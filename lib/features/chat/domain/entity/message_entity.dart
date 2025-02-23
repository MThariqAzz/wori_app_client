class MessageEntity {
  final String id;
  final String conversationId;
  final String senderId;
  final String senderName;
  final String content;

  final DateTime createdAt;

  MessageEntity({
    required this.id,
    required this.conversationId,
    required this.senderId,
    required this.senderName,
    required this.content,
    required this.createdAt,
  });
}
