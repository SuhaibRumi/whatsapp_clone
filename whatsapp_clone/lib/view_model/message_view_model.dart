import 'package:whatsapp_clone/model/message_model.dart';
import '../utils/service.dart';

class MessageViewModel {
  String id = '';
  String userName = '';
  String profileImage = '';
  String lastMessage = '';
  String timeAgo = '';
  String msgType = '';
  bool isSender = true;

  MessageViewModel(
      {String id = "",
      String username = "",
      String imageUrl = "",
      String lastMsg = "",
      String time = "",
      String messageType = "",
      bool isSender = true}) {
    id = id;
    userName = username;
    profileImage = imageUrl;
    lastMessage = lastMsg;
    timeAgo = time;
    msgType = messageType;
    isSender = isSender;
  }

  var messageModel = Message();
  saveData() {
    messageModel = Message(
        id: id,
        userName: userName,
        profileImage: profileImage,
        lastMessage: lastMessage,
        timeAgo: timeAgo,
        msgType: msgType,
        isSender: isSender);
    // var row = messageModel.toMap();
  }

  updateModel() {
    messageModel = Message(
        id: id,
        userName: userName,
        profileImage: profileImage,
        lastMessage: lastMessage,
        timeAgo: timeAgo,
        msgType: msgType,
        isSender: isSender);
    // var row = messageModel.toMap();
  }

  deleteData() {}

  Future<List<MessageViewModel>> getData() async {
    List<MessageViewModel> data = [];
    var service = JsonService();
    var row = await service.loadData("assets/message.json");
    var messages = MessageList.fromMap(row);

    data = messages.messageList
        .map((i) => MessageViewModel(
              id: i.id ?? "",
              isSender: i.isSender!,
              imageUrl: i.profileImage ?? "",
              lastMsg: i.lastMessage ?? "",
              time: i.timeAgo ?? "",
              username: i.userName ?? "",
              messageType: i.msgType ?? "",
            ))
        .toList();
    return data;
  }
}
