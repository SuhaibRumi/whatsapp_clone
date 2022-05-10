import 'package:flutter/material.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class BroadCast extends StatelessWidget {
  const BroadCast({Key? key}) : super(key: key);

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
              "New broadcast",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "0 0f 300 selected",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          CircleButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Only contacts with +92 321 4523215 in their address book will recive your broadcast message",
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              endIndent: 15,
              indent: 15,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
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
              itemCount: 20,
            ),
          ],
        ),
      ),
    );
  }
}
