import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';
import 'package:task_blackwhite_02/LeaveManagement/Utility/LeaveHistoryCard.dart';

import '../mainRequest.dart';

//---------------Request/Screen23----------------//

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

String requestA = 'Request For Laptop';
String requestB = 'Rquest For Hiring';
String requestC = 'Rquest For Casual Leave';
String content =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';
String approved = 'apd';
String no = 'no';

class MyRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'My Request', true),
      body: SingleChildScrollView(
        child: Column(
          //using Listview to list all widget
          children: [
            CreateButton(),
            //-----------------------------------------//
            Column(
              children: [
                LeaveHistoryCard(requestA, content, approved),
                LeaveHistoryCard(requestB, '', no),
                LeaveHistoryCard(requestC, content, approved),
              ],
            ),
          ],
        ),
      ),
    );
  }
}