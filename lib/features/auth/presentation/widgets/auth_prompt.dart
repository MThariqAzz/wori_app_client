import 'package:flutter/material.dart';

class AuthPrompt extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String subTitle;

  const AuthPrompt(
      {super.key,
      required this.onTap,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: RichText(
          text: TextSpan(
            text: title,
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: subTitle,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
