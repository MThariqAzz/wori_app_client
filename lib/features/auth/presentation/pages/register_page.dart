import 'package:flutter/material.dart';
import 'package:wori_app/core_package.dart';
import 'package:wori_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:wori_app/features/auth/presentation/widgets/auth_button.dart';
import 'package:wori_app/features/auth/presentation/widgets/auth_input_field.dart';
import 'package:wori_app/features/auth/presentation/widgets/auth_prompt.dart';
import 'package:wori_app/state_util.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onRegister() {
    BlocProvider.of<AuthBloc>(context).add(AuthEvent.register(
      username: usernameController.text,
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
              'Sign Up',
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 20,
            ),
            AuthInputField(
                hint: 'Username',
                icon: Icons.person,
                controller: usernameController,
                isPassword: false),
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
                    Get.toNamed('/login');
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
                      color: Colors.white, // Sesuaikan dengan tema aplikasi
                    ),
                  ),
                  success: (_) => Container(),
                  error: (_) => Container(),
                );
              },
            ),
            AuthButton(text: 'Register', onPressed: _onRegister),
            const SizedBox(
              height: 20,
            ),
            AuthPrompt(
                onTap: () {
                  Get.toNamed('/login');
                },
                title: 'Already have an account? ',
                subTitle: 'Sign In')
          ],
        ),
      ),
    ));
  }
}
