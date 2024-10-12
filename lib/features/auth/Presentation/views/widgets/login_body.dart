import 'package:app_chats_ui/core/constants/images.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_button.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_textformfield.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:app_chats_ui/features/chats/presentation/view/chats_view.dart';
import 'package:app_chats_ui/features/auth/Presentation/views/signup_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isNotVisable = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage(Images.logo),
              ),
              const SizedBox(height: 20),
              Text(
                "Login to your account",
                style: Style.textStyle20,
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                  label: "Email",
                  prefixIcon: Icons.email,
                  hintText: "Enter your email",
                  keyboardType: TextInputType.emailAddress),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: "Password",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isNotVisable = !isNotVisable;
                      });
                    },
                    icon: Icon(
                      (isNotVisable) ? Icons.visibility_off : Icons.visibility,
                      color: Colors.cyan,
                    )),
                prefixIcon: Icons.lock,
                hintText: "Enter your password",
                keyboardType: TextInputType.text,
                obscureText: isNotVisable,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: "Login",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChatView(),
                      ));
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "Don't have account ? ",
                    style: Style.textStyle16,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignUpView(),
                        ));
                      },
                      child: Text(
                        "Register Now .",
                        style: Style.textStyle16.copyWith(color: Colors.cyan),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
