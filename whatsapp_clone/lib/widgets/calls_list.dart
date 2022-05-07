import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view_model/call_view_model.dart';

class CallsList extends StatelessWidget {
  final List<CallsViewModel> callsList;
  const CallsList({Key? key, required this.callsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: callsList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/1.jpg'),
            ),
            title: Text(callsList[index].userName),
            subtitle: Text(callsList[index].timeAgo),
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
