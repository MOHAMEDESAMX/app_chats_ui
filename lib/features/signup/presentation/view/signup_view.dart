import 'package:app_chats_ui/core/constants/images.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_button.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_textformfield.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:app_chats_ui/features/login/presentation/view/login_view.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 140,
                backgroundImage: AssetImage(Images.logo),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SignUp Now",
                    style: Style.textStyle20,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const CustomTextFormField(
                label: "Name",
                prefixIcon: Icons.person,
                hintText: "enter your name",
                keyboardType: TextInputType.name,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextFormField(
                label: "email",
                prefixIcon: Icons.email,
                hintText: "enter your email",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                obscureText: obs,
                label: "password",
                prefixIcon: Icons.lock,
                hintText: "enter your password",
                keyboardType: TextInputType.visiblePassword,
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
                    icon: Icon(
                      iconData,
                      color: Colors.cyan,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomTextFormField(
                obscureText: true,
                label: "confirm password",
                prefixIcon: Icons.lock,
                hintText: "confirm your password",
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(text: "Sign Up", onPressed: () {}),
              const Spacer(),
              Row(
                children: [
                  const Text("Have account ? ", style: Style.textStyle16),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ));
                      },
                      child: Text("Login Now",
                          style: Style.textStyle16.copyWith(
                              color: Colors.cyan, fontWeight: FontWeight.bold)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
