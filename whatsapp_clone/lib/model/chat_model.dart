class Chat {
  final String? id;
  final String? userName;
  final String? profileImage;
  final String? lastMessage;
  final String? timeAgo;

  Chat(
      {this.id,
      this.userName,
      this.profileImage,
      this.lastMessage,
      this.timeAgo});

  factory Chat.fromMap(Map map) {
    return Chat(
        id: map['id'],
        userName: map['userName'],
        profileImage: map['profileImage'],
        lastMessage: map['lastMessage'],
        timeAgo: map['timeAgo']);
  }
  toMap() {
    Map<String, dynamic> row = {};
    row = {
      "id": id,
      "userName": userName,
      "profileImage": profileImage,
      "lastMessage": lastMessage,
      "timeAgo": timeAgo
    };
    return row;
  }
}

class ChatList {
  final List<Chat> chatList;
  ChatList({required this.chatList});

  factory ChatList.fromMap(List data) {
    List<Chat> chats = [];
    chats = data.map((i) => Chat.fromMap(i)).toList();
    return ChatList(chatList: chats);
  }
}
