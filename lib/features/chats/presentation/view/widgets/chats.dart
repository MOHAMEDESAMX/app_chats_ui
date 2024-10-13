import 'package:app_chats_ui/features/chats/presentation/view/contact_chat.dart';
import 'package:app_chats_ui/features/chats/presentation/view_model/users_model.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: chats.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            ImageProvider? imageProvider;
            if (chats[index].imageUrl.startsWith('https')) {
              imageProvider = NetworkImage(chats[index].imageUrl);
            } else {
              imageProvider = AssetImage(chats[index].imageUrl);
            }
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactChat(
                      imageProvider: imageProvider,
                      username: chats[index].name,
                    ),
                  ),
                );
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: imageProvider,
              ),
              title: Text(
                chats[index].name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                chats[index].lastmessage,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              trailing: Text(
                chats[index].time,
              ),
            );
          },
        ),
      ),
    );
  }
}
