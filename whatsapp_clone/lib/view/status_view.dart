import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/view_model/status_view_model.dart';
import 'package:whatsapp_clone/widgets/muted_status_list.dart';

import '../widgets/status_card_list.dart';
import '../widgets/status_listview.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  final _statusViewModel = StatusViewModel();
  @override
  void initState() {
    super.initState();
  }
   final ImagePicker _image = ImagePicker();

  openCamera() async {
    final XFile? photo = await _image.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _statusViewModel.getData(),
          builder: (context,AsyncSnapshot<List<StatusViewModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: const StatusCard()),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Recent Updates',
                          style: TextStyle(fontSize: 16),
                        )),
                  ),
                  const StatusList(),
                  const SizedBox(
                    height: 8,
                  ),
                  const MutedStatusList(),
                ],
              ),
            );
          }),
      floatingActionButton: SizedBox(
        height: 110,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.edit,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            FloatingActionButton(
              onPressed: openCamera,
              child: const Icon(Icons.camera_alt),
              backgroundColor: primaryColor,
            ),
          ],
        ),
      ),
    );
    // const StatusList();
  }
}
