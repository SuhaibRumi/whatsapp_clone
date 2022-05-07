import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/view_model/chat_view_model.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final _chatViewModel = ChatViewModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _chatViewModel.getData(),
          builder: (context, AsyncSnapshot<List<ChatViewModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List<ChatViewModel> dataList = snapshot.data!;
            return  ChatCardList(chatList: dataList,);
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.comment),
          backgroundColor: primaryColor),
    );
  }
}
