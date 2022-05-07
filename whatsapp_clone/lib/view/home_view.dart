import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/view/view.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  int index = 1;
  var _tabController;
  final screens = [
    Container(),
    const ChatView(),
    const StatusView(),
    const CallsView(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: index);
  }

  final ImagePicker _image = ImagePicker();

  openCamera() async {
    final XFile? photo = await _image.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        backgroundColor: primaryColor,
        actions: [
          CircleButton(onPressed: () {}, icon: const Icon(Icons.search)),
          PopupMenuButton(
            iconSize: 20,
            itemBuilder: (context) {

            return [
               PopupMenuItem(
                child: const Text("New Group"),
                onTap: () {},
              ),
               PopupMenuItem(
                child: const Text("New Broadcast"),
                onTap: () {},
              ),
               PopupMenuItem(
                child: const Text("Linked Devices"),
                onTap: () {},
              ),
               PopupMenuItem(
                child: const Text("Starred Messages"),
                onTap: () {},
              ),
               PopupMenuItem(
                child: const Text("Settings"),
                onTap: () {},
              ),
            ];
          })
        ],
        bottom: TabBar(
          onTap: (index) {
            if (index == 0) {
              openCamera();
              _tabController.animateTo(1);
            }
          },
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: screens),
    );
  }
}
