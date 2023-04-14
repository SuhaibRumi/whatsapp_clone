import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/widgets/circle_button.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Message",
                prefixIcon: CircleButton(
                    onPressed: () {}, icon: const Icon(Icons.emoji_emotions)),
                suffixIcon: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      CircleButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.attachment,
                          )),
                      CircleButton(
                          onPressed: () {}, icon: const Icon(Icons.send)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              radius: 22,
              backgroundColor: primaryColor,
              child: const Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
