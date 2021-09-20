import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';
import 'package:task_blackwhite_02/MemberDetails/Utility/MemberCards.dart';

class MainMemberDetails extends StatelessWidget {
  const MainMemberDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Member Details', false),
      body: Column(
        children: [
          Spacer(),
          MemberCard(headTitle: 'Member Name'),
          MemberCard(headTitle: 'Checkin History'),
          MemberCard(headTitle: 'Performance Histroy'),
          MemberCard(headTitle: 'Request Histroy'),
          Spacer(),
        ],
      ),
    );
  }
}
