import 'package:flutter/material.dart';

import '../utils/utils.dart';

class LinkedDevicePage extends StatelessWidget {
  const LinkedDevicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 50,
        title: const Text("Linked devies", style: TextStyle(fontSize: 24)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/bg.png"),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Use WhatsApp on other device",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
