import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user-2.jpg'),
                radius: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            top: 30,
            right: 0,
            left: 38,
            child: CircleAvatar(
              // radius: 20,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                // radius: 25,
                backgroundColor: primaryColor,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          )
        ],
      ),
      title: const Text('My Status'),
      subtitle: const Text('Tap to add status update'),
    );
  }
}
