import 'package:flutter/material.dart';

class CallsList extends StatelessWidget {
  const CallsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 30,
              // backgroundImage: AssetImage('assets/user-3.jpg'),
            ),
            title: const Text('UnKnown'),
            subtitle: const Text('2mins ago'),
            // trailing: Icon(Icons.call),
            trailing: SizedBox(
              height: double.infinity,
              width: 45,
              child: InkWell(onTap: () {}, child: const Icon(Icons.phone)),
            ),
          );
        });
  }
}
