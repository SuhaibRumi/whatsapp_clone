import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view_model/call_view_model.dart';
import 'package:whatsapp_clone/widgets/calls_list.dart';

import '../utils/colors.dart';

class CallsView extends StatefulWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  final _callsViewModel = CallsViewModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _callsViewModel.getData(),
          builder: (context, AsyncSnapshot<List<CallsViewModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List<CallsViewModel> dataList = snapshot.data!;
            return CallsList(callsList: dataList,);
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.phone),
          backgroundColor: primaryColor),
    );
  }
}
