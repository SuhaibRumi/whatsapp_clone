import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/status_listview.dart';

class MutedStatusList extends StatefulWidget {
  const MutedStatusList({ Key? key }) : super(key: key);

  @override
  State<MutedStatusList> createState() => _MutedStatusListState();
}

class _MutedStatusListState extends State<MutedStatusList> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Muted"),
      children: [
        StatusList()
      ],
    );
  }
}