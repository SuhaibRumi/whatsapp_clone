import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class StarMessagePage extends StatelessWidget {
  const StarMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 50,
        title: const Text(
          'Starred Messages',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 110),
        child: Column(children: const [
          CircleAvatar(
              radius: 90,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 80,
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(38.0),
            child: Text(
              'Tap and Hold on any message in any chat to star it so you can easily find it later',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          )
        ]),
      ),
    );
  }
}
