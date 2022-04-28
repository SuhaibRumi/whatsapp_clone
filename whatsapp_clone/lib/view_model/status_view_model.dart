import 'package:whatsapp_clone/model/model.dart';

class StatusViewModel {
  String id = '';
  String userName = '';
  String profileImage = '';
  String timeAgo = '';
  bool isMuted = true;

  var statusModel = Status();

  saveData() {
    statusModel = Status(
      id: id,
      userName: userName,
      profileImage: profileImage,
      timeAgo: timeAgo,
      isMuted: isMuted,
    );
    var row = statusModel.toMap();
  }

  updateData() {
    statusModel = Status(
      id: id,
      userName: userName,
      profileImage: profileImage,
      timeAgo: timeAgo,
      isMuted: isMuted,
    );
    var row = statusModel.toMap();
  }

  deleteData() {}

  getData() {
    var row = {};

    statusModel = Status.fromMap(row);
    id = statusModel.id!;
    userName = statusModel.userName!;
    profileImage = statusModel.profileImage!;
    timeAgo = statusModel.timeAgo!;
    isMuted = statusModel.isMuted!;
  }
}
