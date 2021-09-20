import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Announcement/mainAnnouncement.dart';
import 'package:task_blackwhite_02/Chat_Screen/Cards/Chat_Card.dart';
import 'package:task_blackwhite_02/My_Buttons/Filloutline_Button.dart';
import 'package:task_blackwhite_02/Models/Chat.dart';
import 'package:task_blackwhite_02/Team/mainTeam.dart';
import 'package:task_blackwhite_02/constColors.dart';
import 'package:task_blackwhite_02/mainHomeProfile/mainHomeProfile.dart';
import 'package:task_blackwhite_02/messages/message_screen.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
            color: kPrimaryGreen,
            child: Row(
              children: [
                FillOutlineButton(
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Team()));
                    },
                    text: 'Recent Message'),
                SizedBox(width: kDefaultPadding),
                FillOutlineButton(
                    press: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainAnnouncement()));
                    }, text: 'Active', isFilled: false),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: chatsData.length,
                  itemBuilder: (context, index) => ChatCard(
                      chat: chatsData[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MessageScreen()))))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MainHomeProfile()));
        },
        backgroundColor: kPrimaryGreen,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Text('Chats'),
    backgroundColor: kPrimaryGreen,
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
      ),
    ],
  );
}
