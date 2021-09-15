import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';

import 'Utility/birthdayCard.dart';

//-----------------Birthday/screen8-------------//

// ignore: camel_case_types
class mainBirthDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Birthdays', true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            BirthDayCard(),
            BirthDayCard(),
            BirthDayCard(),
            BirthDayCard(),
          ],
        ),
      ),
    );
  }
}