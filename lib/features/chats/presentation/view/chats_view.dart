import 'package:app_chats_ui/core/themes/colors.dart';
import 'package:app_chats_ui/features/chats/presentation/view/widgets/chats.dart';
import 'package:app_chats_ui/features/chats/presentation/view/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColorApp,
      appBar: AppBar(
        backgroundColor: ColorsApp.primaryColorApp,
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: const Column(
        children: [
          //favorite contacts
          FavoriteContacts(),
          //chats
          Chats(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorsApp.primaryColorApp,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
