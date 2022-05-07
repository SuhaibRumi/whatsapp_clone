import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: 
          Stack(
            children:  [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/1.jpg'),
                    radius: 22,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: primaryColor,
                    child: const Icon(Icons.add, color: Colors.white, size: 15,),
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
