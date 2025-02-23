import 'package:flutter/material.dart';

BuildContext get globalContext {
  return Get.currentContext;
}

class Get {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get currentContext {
    return navigatorKey.currentState!.context;
  }

  // Basic Navigation
  static Future<dynamic> to(Widget page) async {
    return await navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static back<T>([T? result]) {
    if (Navigator.canPop(globalContext)) {
      Navigator.pop(globalContext, result);
    }
  }

  static Future<dynamic> off(Widget page) {
    return navigatorKey.currentState!.pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static Future<dynamic> offAll(Widget page) {
    return navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (Route<dynamic> route) => false,
    );
  }

  // Named Route Navigation
  static Future<dynamic> toNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> offAndToNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  static Future<dynamic> offAllNamed(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  // Screen Dimensions
  static MediaQueryData get mediaQuery => MediaQuery.of(currentContext);

  static double get width => mediaQuery.size.width;
  static double get height => mediaQuery.size.height;

  static double get statusBarHeight => mediaQuery.padding.top;
  static double get bottomBarHeight => mediaQuery.padding.bottom;

  static bool get isPhone => width < 600;
  static bool get isTablet => width >= 600;
  static bool get isLandscape =>
      MediaQuery.of(currentContext).orientation == Orientation.landscape;

  // Theme Management
  static ValueNotifier<ThemeData> mainTheme =
      ValueNotifier<ThemeData>(ThemeData());

  static void changeTheme(ThemeData theme) {
    mainTheme.value = theme;
  }

  static ThemeData get theme => Theme.of(currentContext);
  static TextTheme get textTheme => theme.textTheme;
  static ColorScheme get colorScheme => theme.colorScheme;

  // Snackbar
  static void showSnackbar(
    String message, {
    Duration duration = const Duration(seconds: 3),
    Color? backgroundColor,
    Color? textColor,
  }) {
    ScaffoldMessenger.of(currentContext).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: textColor),
        ),
        duration: duration,
        backgroundColor: backgroundColor,
      ),
    );
  }

  // Dialog
  static Future<T?> dialog<T>({
    required Widget child,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: currentContext,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) => child,
    );
  }

  // Bottom Sheet
  static Future<T?> bottomSheet<T>({
    required Widget child,
    bool isDismissible = true,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
  }) {
    return showModalBottomSheet<T>(
      context: currentContext,
      isDismissible: isDismissible,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      builder: (BuildContext context) => child,
    );
  }

  // Platform Check
  static bool get isIOS =>
      Theme.of(currentContext).platform == TargetPlatform.iOS;
  static bool get isAndroid =>
      Theme.of(currentContext).platform == TargetPlatform.android;
}

// Extension untuk memudahkan akses context
extension GetExtension on BuildContext {
  double get width => Get.width;
  double get height => Get.height;
  ThemeData get theme => Get.theme;
  TextTheme get textTheme => Get.textTheme;
  ColorScheme get colorScheme => Get.colorScheme;
  bool get isPhone => Get.isPhone;
  bool get isTablet => Get.isTablet;
  bool get isLandscape => Get.isLandscape;
}
