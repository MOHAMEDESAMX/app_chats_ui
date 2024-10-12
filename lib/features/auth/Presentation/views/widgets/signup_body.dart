import 'package:app_chats_ui/core/constants/images.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_button.dart';
import 'package:app_chats_ui/core/shared_widgets/custom_textformfield.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:app_chats_ui/features/chats/presentation/view/chats_view.dart';
import 'package:app_chats_ui/features/auth/Presentation/views/login_view.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});
  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  bool isNotVisable = true;
  final formkey =GlobalKey<FormState>();
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
                  radius: 140,
                  backgroundImage: AssetImage(Images.logo),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create A New Account",
                      style: Style.textStyle20,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  label: "Name",
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please Enter Your Name";
                    }
                    return null;
                  },
                  prefixIcon: Icons.person,
                  hintText: "enter your name",
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  label: "email",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Email";
                    }
                    return null;
                  },
                  prefixIcon: Icons.email,
                  hintText: "enter your email",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormField(
                  obscureText: isNotVisable,
                  label: "password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your password";
                    }
                    return null;
                  },
                  prefixIcon: Icons.lock,
                  hintText: "enter your password",
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isNotVisable = !isNotVisable;
                      });
                    },
                    icon: Icon(
                        (isNotVisable) ? Icons.visibility_off : Icons.visibility),
                  ),
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
                CustomButton(
                    text: "Sign Up",
                    onPressed: () {
                      if(formkey.currentState!.validate()){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const ChatView(),
                            ));
                      }
                      
                    }),
                const Spacer(),
                Row(
                  children: [
                    const Text("Have account ? ", style: Style.textStyle16),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const LoginView(),
                        ));
                      },
                      child: Text("Login Now",
                          style: Style.textStyle16.copyWith(
                              color: Colors.cyan, fontWeight: FontWeight.bold)),
                    )
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
