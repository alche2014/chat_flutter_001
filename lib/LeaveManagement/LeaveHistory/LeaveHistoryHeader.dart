import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/LeaveManagement/LeaveAppbar.dart';

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

class LeaveHistoryHeader extends StatelessWidget {
  const LeaveHistoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildLeaveAppBar(context, 'Leave History', false),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeaderIconCard('Anual', '20'),
            HeaderIconCard('Casual', '20'),
            HeaderIconCard('Sick', '20'),
          ],
        ),
      ),
    );
  }
}

//=============================================================//

class HeaderIconCard extends StatelessWidget {
  String leaveHeader;
  String leaveCount;

  HeaderIconCard(this.leaveHeader, this.leaveCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[100],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('assets/icons/round.png'),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              '$leaveHeader Leave',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              '$leaveCount Pending',
              style: TextStyle(color: Colors.grey),
            ),
          ]),
    );
  }
}
