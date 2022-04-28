import 'package:flutter/material.dart';

class ChatBar extends StatelessWidget {
  const ChatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 500,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                        ),
                        splashRadius: 20,
                      ),
                      hintText: "Message",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                        ),
                        splashRadius: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.mic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
