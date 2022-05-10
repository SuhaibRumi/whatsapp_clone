import 'package:flutter/material.dart';

class ViewContactPage extends StatelessWidget {
  const ViewContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CircleAvatar(),
                  Text('SliverAppBar'),
                ],
              ),
              // background: FlutterLogo(),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return const ListTile(
              title: Text("Hello"),
            );
          }))
        ],
      ),
    );
  }
}
