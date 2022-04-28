import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';
import '../utils/colors.dart';

class ChatDetails extends StatelessWidget {
  const ChatDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(
          children: [
            const BackButton(),
            const CircleAvatar(
              backgroundImage: AssetImage("assets/user-6.jpg"),
              radius: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Shary",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Active 2hour ago",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          CircleButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          CircleButton(onPressed: () {}, icon: const Icon(Icons.call)),
        ],
      ),
      body: const ChatBar(),
    );
  }
}
