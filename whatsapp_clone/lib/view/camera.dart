import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraView extends StatefulWidget {
  const CameraView({Key? key}) : super(key: key);

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  final ImagePicker _image = ImagePicker();

  openCamera() async {
    final XFile? photo = await _image.pickImage(source: ImageSource.camera);
  }

  @override
  void initState() {
    openCamera();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    openCamera();
    return Container();
  }
}
