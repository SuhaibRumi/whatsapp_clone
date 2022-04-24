import 'package:flutter/material.dart';

class ChatCardList extends StatelessWidget {
  const ChatCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(),
          title: Text("Username"),
          subtitle: Text("Message"),
          trailing: Text('Time ago')
        );
      },
    );
  }
}
