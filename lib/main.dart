import 'package:flutter/material.dart';
import 'package:wori_app/core.dart';
import 'package:wori_app/injection.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(); // Remove await since it returns void
  await initializeDateFormatting('id_ID', null);

  final socketService = SocketService();
  await socketService.initSocket();

  runApp(const MyApp()); // Add const here
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider<ConversationBloc>(
          create: (context) => sl<ConversationBloc>(),
        ),
        BlocProvider<MessageBloc>(
          create: (context) => sl<MessageBloc>(),
        ),
        BlocProvider<ContactBloc>(
          create: (context) => sl<ContactBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.navigatorKey,
        title: 'Wori',
        theme: AppTheme.darkTheme,
        home: const LoginPage(),
        routes: {
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/conversation': (context) => const ConversationPage(),
        },
      ),
    );
  }
}
