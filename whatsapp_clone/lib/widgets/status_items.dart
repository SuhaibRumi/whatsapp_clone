import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  const StatusItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/user-2.jpg"),
                radius: 22,
              ),
            ),
          ),
          title: Text("Tahir"),
          subtitle: Text("30 sec ago"),
        );
      },
      itemCount: 10,
    );
  }
}
