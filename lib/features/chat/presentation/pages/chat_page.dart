import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wori_app/core.dart';

class ChatPage extends StatefulWidget {
  final String conversationId;
  final String mate;
  const ChatPage({super.key, required this.conversationId, required this.mate});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final _storage = FlutterSecureStorage();
  String userId = '';
  String botId = 'fea5a4aa-d741-487d-b3c1-7f32f0004ec7';

  @override
  void initState() {
    super.initState();
    BlocProvider.of<MessageBloc>(context)
        .add(MessageEvent.loadMessage(conversationId: widget.conversationId));
    fetchUserId();
  }

  fetchUserId() async {
    userId = await _storage.read(key: 'userId') ?? '';
    setState(() {
      userId = userId;
    });
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final content = _messageController.text;
    if (content.isNotEmpty) {
      BlocProvider.of<MessageBloc>(context).add(
        MessageEvent.sendMessage(
          conversationId: widget.conversationId,
          content: content,
        ),
      );
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "${widget.mate}",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 24.0,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(child: BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                return state.when(
                  dailyQuestionLoaded: (dailyQuestion) => const SizedBox(),
                  initial: () {
                    return const Center(
                      child: SizedBox(),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (messages) {
                    return ListView.builder(
                      reverse: true, // Tambahkan ini
                      itemCount: messages.length,
                      padding: EdgeInsets.all(20),
                      itemBuilder: (context, index) {
                        final message = messages[messages.length - 1 - index];
                        final isSendMessage = message.senderId == userId;
                        final isDailyQuestion = message.senderId == botId;

                        if (isSendMessage) {
                          return _buildSendMessage(context, message.content);
                        } else if (isDailyQuestion) {
                          return _buildDailyQuestion(
                            context,
                            message.content,
                          );
                        } else {
                          return _buildReceivdMessage(
                            context,
                            message.content,
                          );
                        }
                      },
                    );
                  },
                  error: (error) {
                    return Center(
                      child: Text(error),
                    );
                  },
                );
              },
            )),
            _buildMessageInput(context, _messageController, _sendMessage),
          ],
        ));
  }

  Widget _buildReceivdMessage(
    BuildContext context,
    String message,
  ) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(right: 45, left: 5, bottom: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: DefaultColors.receiverMessage,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(15),
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildDailyQuestion(
    BuildContext context,
    String message,
  ) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 86, 169, 211),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Text(
          '🤖 Daily Question\n\n$message',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildSendMessage(BuildContext context, String message) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(right: 5, left: 30, bottom: 20),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: DefaultColors.senderMessage,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Text(
          message,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }

  Widget _buildMessageInput(
    BuildContext context,
    TextEditingController controller,
    VoidCallback onPress,
  ) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      constraints: BoxConstraints(
        maxHeight: 75, // maksimal tinggi
      ),
      decoration: BoxDecoration(
        color: DefaultColors.sentMessageInput,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.center, // Penting untuk alignment yang tepat
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: TextField(
              controller: controller,
              maxLines: null, // Biarkan baris menyesuaikan konten
              minLines: 1, // Minimal 1 baris
              textCapitalization:
                  TextCapitalization.sentences, // Kapitalisasi otomatis
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'message',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10), // Padding vertikal
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: onPress,
            icon: const Icon(
              Icons.send,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
