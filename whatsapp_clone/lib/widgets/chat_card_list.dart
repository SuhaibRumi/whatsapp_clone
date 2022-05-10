import 'package:flutter/material.dart';
import '../view/view.dart';
import '../view_model/view_model.dart';
import '../view/chat_view_details.dart';

class ChatCardList extends StatelessWidget {
  final List<ChatViewModel> chatList;
  const ChatCardList({Key? key, required this.chatList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChatDetails()));
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(chatList[index].profileImage),
            ),
            title: Text(chatList[index].userName),
            subtitle: Text(chatList[index].lastMessage),
            trailing: Text(chatList[index].timeAgo),
          ),
        );
      },
    );
  }
}
