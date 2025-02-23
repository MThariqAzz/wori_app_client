import 'package:flutter/material.dart';
import 'package:wori_app/core.dart';

class MessageInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPress;
  const MessageInput(
      {super.key, required this.controller, required this.onPress});

  @override
  Widget build(BuildContext context) {
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
