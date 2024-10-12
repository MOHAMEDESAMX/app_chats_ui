import 'package:app_chats_ui/core/constants/images.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_button.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_textformfield.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:app_chats_ui/features/chats/presentation/view/chats_view.dart';
import 'package:app_chats_ui/features/signup/presentation/view/signup_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  IconData iconData = Icons.visibility;
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
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
                          if (iconData == Icons.visibility_off) {
                            iconData = Icons.visibility;
                            obs = true;
                          } else {
                            iconData = Icons.visibility_off;
                            obs = false;
                          }
                        });
                      },
                      icon: Icon(iconData)),
                  prefixIcon: Icons.lock,
                  hintText: "Enter your password",
                  keyboardType: TextInputType.text,
                  obscureText: obs,
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
                    }),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Don't have account ? ",
                      style: Style.textStyle16,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpView(),
                              ));
                        },
                        child: Text(
                          "Register Now .",
                          style: Style.textStyle16.copyWith(color: Colors.cyan),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
