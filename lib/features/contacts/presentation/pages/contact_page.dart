import 'package:flutter/material.dart';
import 'package:wori_app/core.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ContactBloc>(context).add(ContactEvent.fetchContacts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Contacts"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: BlocListener<ContactBloc, ContactState>(
        listener: (context, state) {
          state.maybeWhen(
            conversationReady: (conversationId, contactName) {
              Get.off(ChatPage(
                conversationId: conversationId,
                mate: contactName,
              ));
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<ContactBloc, ContactState>(
          builder: (context, state) {
            return state.when(
              conversationReady: (_, __) => const SizedBox(),
              initial: () {
                context
                    .read<ContactBloc>()
                    .add(const ContactEvent.fetchContacts());
                return const Center(child: CircularProgressIndicator());
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (contacts) => ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    title: Text(contact.username),
                    subtitle: Text(contact.email),
                    onTap: () {
                      context.read<ContactBloc>().add(
                            ContactEvent.checkOrCreate(
                              contactId: contact.contactId,
                              contactName: contact.username,
                            ),
                          );
                    },
                  );
                },
              ),
              error: (message) => Center(child: Text(message)),
              added: () => const SizedBox(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () => _showAddContactDialog(context),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void _showAddContactDialog(BuildContext context) {
    final emailController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => BlocListener<ContactBloc, ContactState>(
        listener: (context, state) {
          state.maybeWhen(
            added: () {
              Navigator.pop(context); // Close dialog on success
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Contact added successfully')),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $message')),
              );
            },
            orElse: () {},
          );
        },
        child: AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title:
              const Text('Add Contact', style: TextStyle(color: Colors.white)),
          content: TextField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'Enter contact email',
              hintStyle: const TextStyle(color: Colors.white),
            ),
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                final email = emailController.text.trim();
                if (email.isNotEmpty) {
                  context
                      .read<ContactBloc>()
                      .add(ContactEvent.addContact(email: email));
                }
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
