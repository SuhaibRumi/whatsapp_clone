import 'package:flutter/material.dart';
import '../widgets/status_items.dart';
import '../widgets/my_status.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: const MyStatus(),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 500,
              child: const StatusItem(),
            ),
          ],
        ),
      ),
    );
  }
}
