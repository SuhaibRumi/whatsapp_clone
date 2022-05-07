import '../model/model.dart';
import '../utils/utils.dart';

class ChatViewModel {
  String id = '';
  String userName = '';
  String profileImage = '';
  String lastMessage = '';
  String timeAgo = '';

  ChatViewModel(
      {String id = "",
      String username = "",
      String imageUrl = "",
      String lastMsg = "",
      String time = ""}) 
  {
    id = id;
    userName = username;
    profileImage = imageUrl;
    lastMessage = lastMsg;
    timeAgo = time;
  }

  var chatModel = Chat();

  saveData() {
    chatModel = Chat(
      id: id,
      userName: userName,
      profileImage: profileImage,
      lastMessage: lastMessage,
      timeAgo: timeAgo,
    );
    // var row = chatModel.toMap();
    //then row variable data send to database,
  }

  updateData() {
    chatModel = Chat(
      id: id,
      userName: userName,
      profileImage: profileImage,
      lastMessage: lastMessage,
      timeAgo: timeAgo,
    );
    // var row = chatModel.toMap();
    // first we send this data to database class for updation,
  }

  deleteData() {
    //we send the chat id to database class for deletion,
  }

  Future<List<ChatViewModel>> getData() async {
    List<ChatViewModel> data = [];
    var service = JsonService();
    var row = await service.loadData("assets/user.json");
    var chats = ChatList.fromMap(row);
    data = chats.chatList
        .map((i) => ChatViewModel(
            id: i.id!,
            username: i.userName!,
            imageUrl: i.profileImage!,
            lastMsg: i.lastMessage!,
            time: i.timeAgo!))
        .toList();
    return data;
  }
}
