import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/widgets/circle_button.dart';

class NewGroupPage extends StatelessWidget {
  const NewGroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 50,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "New group",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Add participants",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          CircleButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (contxt, index) {
          return const ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/1.jpg"),
            ),
            title: Text("UserName"),
            subtitle: Text("Hey I am Using whatsApp"),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
