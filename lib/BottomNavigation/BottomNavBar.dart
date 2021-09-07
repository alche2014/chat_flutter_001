import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Chat_Screen/Components/Chatbody.dart';
import 'package:task_blackwhite_02/Profile/mainProfile.dart';

int? count;                   

class NavBar extends StatefulWidget {
  NavBar(int a){                 //Intializing Globle variable for indexing nav position
    count = a;
  }
  @override
  _NavBarState createState() => _NavBarState();
}

final darkRed = Color(0xffbf2634);

class _NavBarState extends State<NavBar> {
  int _currentindex = count!;

  final tabs = [            //Assigning Tabs for bottom bar position Icon
    Center(child: ChatBody()),
    Center(child: Text('Null')),
    Center(child: Text('Null')),
    Center(child: MyProfile()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chat"),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
              BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            }));
  }
}