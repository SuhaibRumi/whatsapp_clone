import 'package:whatsapp_clone/model/model.dart';

class CallsViewModel {
  String id = '';
  String userName = '';
  String profileImage = '';
  String timeAgo = '';
  String callDuration = '';
  String callStatus = '';
  String dataUsage = '';
  String callTime = '';

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
    var row = callsModel.toMap();
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
    var row = callsModel.toMap();
  }

  deleteData() {}
  getData() {
    var row = {};
    callsModel = Calls.fromMap(row);
    id = callsModel.id!;
    userName = callsModel.userName!;
    profileImage = callsModel.profileImage!;
    timeAgo = callsModel.timeAgo!;
    callDuration = callsModel.callDuration!;
    callStatus = callsModel.callStatus!;
    dataUsage = callsModel.dataUsage!;
    callTime = callsModel.callTime!;
  }
}
