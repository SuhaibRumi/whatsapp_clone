import 'package:flutter/material.dart';


class StatusList extends StatelessWidget {
  const StatusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor:Colors.green,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/1.jpg'),
                radius: 22,
              ),
            ),
          ),
          title: Text("Ahmed"),
          subtitle: Text("2min ago"),
        );
      },
    );
  }
}
