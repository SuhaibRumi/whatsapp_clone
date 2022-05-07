class Message {
  final String? id;
  final String? userName;
  final String? profileImage;
  final String? lastMessage;
  final String? timeAgo;
  final String? msgType;
  final bool? isSender;

  Message(
      {this.id,
      this.userName,
      this.profileImage,
      this.lastMessage,
      this.timeAgo,
      this.msgType,
      this.isSender});
  factory Message.fromMap(Map map) {
    return Message(
        id: map['id'],
        userName: map['userName'],
        profileImage: map['profileImage'],
        lastMessage: map['lastMessage'],
        timeAgo: map['timeAgo'],
        msgType: map['msgType'],
        isSender: map['isSender']);
  }
  toMap() {
    Map<String, dynamic> row = {};
    row = {
      "id": id,
      "userName": userName,
      "profileImage": profileImage,
      "lastMessage": lastMessage,
      "timeAgo": timeAgo,
      "msgType": msgType,
      "isSender": isSender
    };
    return row;
  }
}

class MessageList {
  final List<Message> messageList;
  MessageList({required this.messageList});

  factory MessageList.fromMap(List data) {
    List<Message> messages = [];
    messages = data.map((map) => Message.fromMap(map)).toList();
    return MessageList(messageList: messages);
  }
}
