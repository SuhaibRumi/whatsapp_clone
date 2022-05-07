class Status {
  final String? id;
  final String? userName;
  final String? profileImage;
  final String? timeAgo;
  final bool? isMuted;

  Status(
      {this.id, this.userName, this.profileImage, this.timeAgo, this.isMuted});
  factory Status.fromMap(Map map) {
    return Status(
      id: map['id'],
      userName: map['userName'],
      profileImage: map['profileImage'],
      timeAgo: map['timeAgo'],
      isMuted: map['isMuted'],
    );
  }
  toMap() {
    Map<String, dynamic> row = {};
    row = {
      "id": id,
      "userName": userName,
      "profileImage": profileImage,
      "timeAgo": timeAgo,
      "isMuted": isMuted
    };
    return row;
  }
}

class StatusList {
  final List<Status> statusList;

  StatusList({required this.statusList});

  factory StatusList.fromMap(List data) {
    List<Status> status = [];
    status = data.map((i) => Status.fromMap(i)).toList();
    return StatusList(statusList: status);
  }
}
