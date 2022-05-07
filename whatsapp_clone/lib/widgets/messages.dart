import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view_model/message_view_model.dart';

// ignore: must_be_immutable
class Messages extends StatelessWidget {
  final List<MessageViewModel> messageList;
  Messages({Key? key, required this.messageList}) : super(key: key);

  var messages = [
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false,
    true,
    false
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messageList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: messages[index] == true
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width / 1.5,
                      ),
                      child: Text(
                        messageList[index].lastMessage,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          messageList[index].timeAgo,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const Icon(
                          Icons.done,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}
