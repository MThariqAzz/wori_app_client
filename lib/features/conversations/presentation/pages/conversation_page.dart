import 'package:flutter/material.dart';
import 'package:wori_app/core.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key});

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ConversationBloc>(context)
        .add(const ConversationEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Message",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Recent",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          BlocBuilder<ConversationBloc, ConversationState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (conversations) => Container(
                  height: 100,
                  padding: const EdgeInsets.all(5),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: conversations.length,
                    itemBuilder: (context, index) {
                      final conversation = conversations[index];
                      return _buildRecentContact(
                          conversation.participantName, context);
                    },
                  ),
                ),
                error: (message) => Center(
                  child: Text(message),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: DefaultColors.messageListPage,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: BlocBuilder<ConversationBloc, ConversationState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: (conversations) {
                      if (conversations.isEmpty) {
                        return _buildEmptyState(context);
                      }
                      return ListView.builder(
                        itemCount: conversations.length,
                        itemBuilder: (context, index) {
                          final conversation = conversations[index];
                          return GestureDetector(
                            onTap: () {
                              Get.to(ChatPage(
                                conversationId: conversation.id,
                                mate: conversation.participantName,
                              ));
                            },
                            child: MessageTile(
                              name: conversation.participantName,
                              message: conversation.lastMessage,
                              timestamp: conversation.lastMessageTime,
                            ),
                          );
                        },
                      );
                    },
                    error: (message) => Center(
                      child: Text(message),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: DefaultColors.senderMessage,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.contacts,
          color: Colors.white,
        ),
        onPressed: () => Get.to(ContactPage()),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            "Belum ada percakapan",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            "Mulai chat dengan teman Anda",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => Get.to(ContactPage()),
            icon: const Icon(Icons.person_add),
            label: const Text("Tambah Kontak"),
            style: ElevatedButton.styleFrom(
              backgroundColor: DefaultColors.senderMessage,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecentContact(String name, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
          ),
          const SizedBox(height: 5),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
