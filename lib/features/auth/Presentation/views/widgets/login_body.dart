import 'package:app_chats_ui/core/constants/images.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_button.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_textformfield.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:app_chats_ui/features/auth/Presentation/views/signup_view.dart';
import 'package:app_chats_ui/features/chats/presentation/view/chats_view.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isNotVisable = true;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
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
                CustomTextFormField(
                    label: "Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your Email";
                      }
                      return null;
                    },
                    prefixIcon: Icons.email,
                    hintText: "Enter your email",
                    keyboardType: TextInputType.emailAddress),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  label: "Password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enetr Your Password";
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotVisable = !isNotVisable;
                        });
                      },
                      icon: Icon(
                        (isNotVisable)
                            ? Icons.visibility_off
                            : Icons.visibility,
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
                    if (formkey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const ChatView(),
                          ));
                    }
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
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
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
      ),
    );
  }
}
