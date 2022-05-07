import '../model/model.dart';
import '../utils/utils.dart';

class StatusViewModel {
  String id = '';
  String userName = '';
  String profileImage = '';
  String timeAgo = '';
  bool isMuted = true;

  StatusViewModel(
      {String id = "",
      String username = "",
      String imageUrl = "",
      bool isMuted = true,
      String time = ""}) {
    id = id;
    userName = username;
    profileImage = imageUrl;
    isMuted = true;
    timeAgo = time;
  }

  var statusModel = Status();

  saveData() {
    statusModel = Status(
      id: id,
      userName: userName,
      profileImage: profileImage,
      timeAgo: timeAgo,
      isMuted: isMuted,
    );
    // var row = statusModel.toMap();
  }

  updateData() {
    statusModel = Status(
      id: id,
      userName: userName,
      profileImage: profileImage,
      timeAgo: timeAgo,
      isMuted: isMuted,
    );
    // var row = statusModel.toMap();
  }

  deleteData() {}

  Future<List<StatusViewModel>> getData() async {
    List<StatusViewModel> data = [];
    var service = JsonService();
    var row = await service.loadData("assets/status.json");
    var status = StatusList.fromMap(row);
    data = status.statusList
        .map((i) => StatusViewModel(
              id: i.id!,
              username: i.userName!,
              imageUrl: i.profileImage!,
              isMuted: i.isMuted!,
              time: i.timeAgo!,
            ))
        .toList();
    return data;
  }
}
