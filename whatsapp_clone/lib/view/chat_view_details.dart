import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view_model/message_view_model.dart';
import 'package:whatsapp_clone/widgets/widgets.dart';
import '../utils/colors.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  final _messageViewModel = MessageViewModel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var alertContext = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 22,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/1.jpg"),
              radius: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Shary",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Active 2hour ago",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          CircleButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          CircleButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton(
              iconSize: 20,
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: const Text("View Contact"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text("Media, links and docs"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: const Text("Search"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: InkWell(
                          onTap: () async {
                            await showDialog(
                              context: context,
                              builder: (context) {
                                return  AlertDialog(
                                    title: const Text("Mute Notifications for..."),
                                    content: SizedBox(
                                      height: 250,
                                      child: Column(
                                        children: [
                                          RadioListTile(
                                            value: 8,
                                             groupValue: "notification",
                                              onChanged: (value)
                                              {
                                                
                                              },
                                              title: const Text("8 hours"),
                                              )
                                        ]),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed:(){},
                                         child: const Text("cancel"),),
                                    ],
                                    
                                    );
                              });
                          },
                          child: const Text("Mute notifications")),
                      onTap: () async {
                        //  await showDialog(
                        //       context: alertContext,
                        //       builder: (_) {
                        //         return const AlertDialog(
                        //             title: Text("Mute Notifications for..."));
                        //       });
                      },
                    ),
                    PopupMenuItem(
                      child: const Text("wallpaper"),
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("More"),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.black,
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                  ])
        ],
      ),
      body: FutureBuilder(
          future: _messageViewModel.getData(),
          builder: (context, AsyncSnapshot<List<MessageViewModel>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            List<MessageViewModel> dataList = snapshot.data!;
          
            return Messages(
              messageList: dataList,
            );
          }),
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: const ChatBar(),
    );
  }
}
