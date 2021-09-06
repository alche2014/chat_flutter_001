import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Chat_Screen/Components/Chatbody.dart';
import 'package:task_blackwhite_02/constColors.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      //-----------------------//
      body: ChatBody(),
      //----------------------//
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryGreen,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      //----------------------------------------------//
      bottomNavigationBar: buildBottomNavBar(),
      //--------------------------------------------//
    );
  }

  //-----------------------------------------------------//

  BottomNavigationBar buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/user_2.png')),
            label: 'Profile'),
      ],
    );
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
}
