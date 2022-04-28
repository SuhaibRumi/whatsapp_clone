class Calls {
  final String? id;
  final String? userName;
  final String? profileImage;
  final String? timeAgo;
  final String? callDuration;
  final String? dataUsage;
  final String? callStatus;
  final String? callTime;

  Calls(
      {this.id,
      this.userName,
      this.profileImage,
      this.timeAgo,
      this.callDuration,
      this.dataUsage,
      this.callStatus,
      this.callTime});

  factory Calls.fromMap(Map map) {
    return Calls(
      id: map['id'],
      userName: map['userName'],
      profileImage: map['profileImage'],
      timeAgo: map['timeAgo'],
      callDuration: map['callDuration'],
      dataUsage: map['dataUsage'],
      callStatus: map['callStatus'],
      callTime: map['callTime'],
    );
  }
  toMap() {
    Map<String, dynamic> row = {};
    row = {
      "id": id,
      "userName": userName,
      "profileImage": profileImage,
      "timeAgo": timeAgo,
      "callDuration": callDuration,
      "dataUsage": dataUsage,
      "callStatus": callStatus,
      "callTime": callTime,
    };
    return row;
  }
}
class CallsList {
  final List<Calls> callsList;
  CallsList({required this.callsList});

  factory CallsList.fromMap(List data) {
    List<Calls> calls = [];
    calls = data.map((i) => Calls.fromMap(i)).toList();
    return CallsList(callsList: calls);
  }
}
