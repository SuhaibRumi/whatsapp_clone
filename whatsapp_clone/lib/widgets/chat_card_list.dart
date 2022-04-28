import 'package:flutter/material.dart';

class ChatCardList extends StatelessWidget {
  const ChatCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 22,
                  // backgroundImage: AssetImage('assets/images/user-5.jpg'),
                )),
          ),
          title: Text("Tahir"),
          subtitle: Text("Message"),
          trailing: Text('Time ago'),
        );
      },
    );
  }
}
