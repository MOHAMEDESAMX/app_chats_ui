import 'package:app_chats_ui/features/chats/presentation/view_model/users_model.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  const FavoriteContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Favorite Contacts",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ImageProvider? imageProvider;
                if (chats[index].imageUrl.startsWith("https")) {
                  imageProvider = NetworkImage(chats[index].imageUrl);
                } else {
                  imageProvider = AssetImage(chats[index].imageUrl);
                }
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: imageProvider,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      chats[index].name.split(" ").first,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 7,
                );
              },
              itemCount: chats.length,
            ),
          ),
        ],
      ),
    );
  }
}
