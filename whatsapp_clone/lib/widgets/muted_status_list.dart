import 'package:flutter/material.dart';

class MutedStatusList extends StatefulWidget {
  const MutedStatusList({Key? key}) : super(key: key);

  @override
  State<MutedStatusList> createState() => _MutedStatusListState();
}

class _MutedStatusListState extends State<MutedStatusList> {
  @override
  Widget build(BuildContext context) {
    return const ExpansionTile(
      title: Text("Muted"),
      children: [],
    );
  }
}
