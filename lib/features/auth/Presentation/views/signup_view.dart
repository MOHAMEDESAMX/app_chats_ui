import 'package:app_chats_ui/features/auth/Presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  IconData iconData = Icons.visibility;
  bool obs = true;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SignUpBody(),
    );
  }
}
