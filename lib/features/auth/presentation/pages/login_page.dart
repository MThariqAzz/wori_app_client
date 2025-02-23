import 'package:flutter/material.dart';
import 'package:wori_app/core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onLogin() {
    BlocProvider.of<AuthBloc>(context).add(AuthEvent.login(
      email: emailController.text,
      password: passwordController.text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            AuthInputField(
                hint: 'Email',
                icon: Icons.email,
                controller: emailController,
                isPassword: false),
            const SizedBox(
              height: 20,
            ),
            AuthInputField(
                hint: 'Password',
                icon: Icons.lock,
                controller: passwordController,
                isPassword: true),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {},
                  success: (message) {
                    Get.showSnackbar(
                      message,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                    );
                    Get.offAllNamed('/conversation');
                  },
                  error: (error) {
                    Get.showSnackbar(
                      error,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      duration: const Duration(seconds: 3),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.when(
                  initial: () => Container(),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                  success: (_) => Container(),
                  error: (_) => Container(),
                );
              },
            ),
            AuthButton(text: 'Login', onPressed: _onLogin),
            const SizedBox(
              height: 20,
            ),
            AuthPrompt(
                onTap: () {
                  Get.toNamed('/register');
                },
                title: 'I dont have an account? ',
                subTitle: 'Sing Up'),
          ],
        ),
      ),
    ));
  }
}
