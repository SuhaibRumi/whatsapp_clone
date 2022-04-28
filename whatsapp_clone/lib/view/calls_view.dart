import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/calls_list.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: const CallsList(),
          ),
        ],
      )),
    );
  }
}
