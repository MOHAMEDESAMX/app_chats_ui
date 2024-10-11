import 'package:app_chats_ui/core/constants/images.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(Images.logo),
            ),
            const SizedBox(height: 20),
            Text("Login to your account",style: Style.textStyle20,),
            const SizedBox(height: 20),
            
          ],
        ),
      ),
      
    );
  }
}