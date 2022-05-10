import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

class SettingProfilePage extends StatelessWidget {
  const SettingProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leadingWidth: 50,
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ListTile(
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/1.jpg'),
                ),
                title: Text(
                  'Suhiab',
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                  'Hey there! I am using WhatsApp..',
                ),
                trailing: Icon(Icons.qr_code, size: 30, color: Colors.black),
              ),
              Divider(thickness: 1.2),
              ListTile(
                leading: Icon(Icons.security),
                title: Text(
                  'Account',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                subtitle: Text('Privacy,Security,Change number',
                    style: TextStyle(fontSize: 14, letterSpacing: 1)),
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text('Chats',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                subtitle: Text(
                  'Theme,Wallpapers,Chat history',
                  style: TextStyle(fontSize: 14, letterSpacing: 1),
                ),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                subtitle: Text(
                  'Message, group & call tones',
                  style: TextStyle(fontSize: 14, letterSpacing: 1),
                ),
              ),
              ListTile(
                leading: Icon(Icons.storage_sharp),
                title: Text('Storage',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                subtitle: Text(
                  'Network usage, auto-doanload',
                  style: TextStyle(fontSize: 14, letterSpacing: 1),
                ),
              ),
              ListTile(
                leading: Icon(Icons.help_center),
                title: Text('Help',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                subtitle: Text(
                  'Help center, Contact us, Privacy policy',
                  style: TextStyle(fontSize: 14, letterSpacing: 1),
                ),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Invite a friend',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              ),
              SizedBox(height: 40),
              Text("from",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              Text("Meta",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w800)),
            ],
          ),
        ),
      ),
    );
  }
}
