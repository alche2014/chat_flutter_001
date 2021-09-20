import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';
import 'package:task_blackwhite_02/CheckInHistory/Utility/CheckInCard.dart';
import 'Utility/DropDown.dart';
import 'Utility/LinearBarIndicator.dart';

//-----------checkin History/Screen3---------------//

final darkRed = Color(0xffbf2634);

//-------------Final String defined---------------//

String name = 'Member Name';
String date = '02-05-2021 Thu';
String timeIN = 'Checkin: 09:25am';
String timeOUT = 'Checkout: 06:00pm';
String content = 'Total Working Hours: 8hr 20min';
String late = 'Late';
String onT = 'On Time';

class MainCheckIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Checkin History', true), //custom appbar
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropDownOpt(),        //dropdown menu define below
              ],
            ),
            SizedBox(height: 10),
            LeaveCard(),
            CheckInCard('Late'),
            CheckInCard('on Time'),
            CheckInCard('Late'),
            CheckInCard('on Time'),
          ],
        ),
      ),
    );
  }
}