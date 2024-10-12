import 'package:app_chats_ui/core/themes/colors.dart';
import 'package:flutter/material.dart';

class ChatsAppBarView extends StatelessWidget implements PreferredSizeWidget {
  const ChatsAppBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
        ),
      ),
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
