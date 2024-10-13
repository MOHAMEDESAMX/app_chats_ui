import 'package:app_chats_ui/core/themes/colors.dart';
import 'package:app_chats_ui/core/themes/style.dart';
import 'package:flutter/material.dart';

class ContactChat extends StatelessWidget {
  const ContactChat({super.key, required this.username, this.imageProvider});

  final String username;
  final ImageProvider? imageProvider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColorApp,
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColorApp,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          username,
          style: Style.textStyle20.copyWith(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_control_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: imageProvider,
                      ),
                      title: const Text(
                        "How are you ?",
                        style: Style.textStyle16,
                      ),
                      subtitle: const Text(
                        "12:00 am",
                        style: Style.textStyle16,
                      ),
                    ),
                    const Spacer(),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(15),
                          suffixIcon: Container(
                            margin: const EdgeInsets.all(2),
                            child: IconButton.filled(
                                alignment: Alignment.center,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 20,
                                )),
                          ),
                          hintText: "Type your message here",
                          border: InputBorder.none),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
