import 'package:flutter/material.dart';
import 'package:wori_app/core.dart';

class SendMessage extends StatelessWidget {
  final String message;
  const SendMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
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
}
