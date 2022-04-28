import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

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
              height: 100,
              child: const StatusCard(),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recents updates",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const StatusList(),
            const SizedBox(
              height: 8,
            ),
            const MutedStatusList(),
          ],
        ),
      ),
    );
  }
}
