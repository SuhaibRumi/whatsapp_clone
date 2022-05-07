import 'package:whatsapp_clone/model/model.dart';
import 'package:whatsapp_clone/utils/utils.dart';

class CallsViewModel {
  String id = '';
  String userName = '';
  String profileImage = '';
  String timeAgo = '';
  String callDuration = '';
  String callStatus = '';
  String dataUsage = '';
  String callTime = '';
  CallsViewModel(
      {String id = "",
      String username = "",
      String imageUrl = "",
      String time = '',
      String duration = "",
      String status = "",
      String usage = "",
      String call = ""}) {
    id = id;
    userName = username;
    profileImage = imageUrl;
    timeAgo = time;
    callDuration = duration;
    callStatus = status;
    dataUsage = usage;
    callTime = call;
  }

  var callsModel = Calls();
  saveData() {
    callsModel = Calls(
      id: id,
      userName: userName,
      profileImage: profileImage,
      timeAgo: timeAgo,
      callDuration: callDuration,
      callStatus: callStatus,
      dataUsage: dataUsage,
      callTime: callTime,
    );
    // var row = callsModel.toMap();
  }

  updateData() {
    callsModel = Calls(
      id: id,
      userName: userName,
      profileImage: profileImage,
      timeAgo: timeAgo,
      callDuration: callDuration,
      callStatus: callStatus,
      dataUsage: dataUsage,
      callTime: callTime,
    );
    // var row = callsModel.toMap();
  }

  deleteData() {}
  Future<List<CallsViewModel>>getData()async {
    List<CallsViewModel> data = [];
    var service = JsonService();
    var row = await service.loadData("assets/calls.json");
    var calls =CallsList.fromMap(row);
    data = calls.callsList.map((i) =>CallsViewModel(
      id: i.id!,
      username: i.userName!,
      imageUrl: i.profileImage!,
      time: i.timeAgo!,
      duration: i.callDuration!,
      status: i.callStatus!,
     call: i.callTime!,
    ) ).toList();
    return data;
  }
}
