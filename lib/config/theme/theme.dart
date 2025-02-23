import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSize {
  static const small = 12.0;
  static const standard = 14.0;
  static const standardUp = 14.0;
  static const medium = 20.0;
  static const large = 28.0;
}

class DefaultColors {
  static const Color greyText = Color(0xffb3b9c9);
  static const Color whiteText = Color(0xffffffff);
  static const Color senderMessage = Color(0xff7A8194);
  static const Color receiverMessage = Color(0xff373e4e);
  static const Color sentMessageInput = Color(0xff3d4354);
  static const Color messageListPage = Color(0xff292f3f);
  static const Color buttonColor = Color(0xff7a8194);
  static const Color dailyquestion = Colors.blueGrey;
}

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: const Color(0XFF1B202D),
      textTheme: TextTheme(
        titleMedium: GoogleFonts.alegreyaSans(
            fontSize: FontSize.medium, color: Colors.white),
        titleLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSize.large,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.alegreyaSans(
          fontSize: FontSize.standardUp,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.alegreyaSans(
          fontSize: FontSize.standard,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.alegreyaSans(
          fontSize: FontSize.standardUp,
          color: Colors.white,
        ),
      ),
    );
  }
}
