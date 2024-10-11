import 'package:app_chats_ui/core/constants/images.dart';

class UsersModel {
  final String name;
  final String imageUrl;
  final String lastmessage;
  final String time;

  const UsersModel({
    required this.name,
    required this.imageUrl,
    required this.lastmessage,
    required this.time,
  });
}

List<UsersModel> chats = [
  const UsersModel(
      name: "Mohamed essam",
      imageUrl: Images.me,
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "Mo Salah",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8CNiYqc_YG8s1-fCOjHu7NZ134OecFJ3NFg&s",
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "trekaa",
      imageUrl:
          "https://64.media.tumblr.com/364ea4ff05edf0bf020180a3ccf38216/tumblr_no71417exN1sg8qugo1_640.jpg",
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "Mohamed ElShenawy",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-S8s5czi4knqemaxayKVAtpnNC6OfGXj-TQ&s",
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "Afsha",
      imageUrl:
          "https://english.ahram.org.eg/Media/News/2021/12/2/41_2021-637740532319896832-989.jpg",
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "mohamed essam",
      imageUrl: Images.me,
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "mohamed essam",
      imageUrl: Images.me,
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "mohamed essam",
      imageUrl: Images.me,
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "mohamed essam",
      imageUrl: Images.me,
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
  const UsersModel(
      name: "mohamed essam",
      imageUrl: Images.me,
      lastmessage: "Hello, How are u Today?",
      time: "10:00 AM"),
];
