import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/LeaveManagement/LeaveAppbar.dart';
import 'package:task_blackwhite_02/LeaveManagement/LeaveHistory/LeaveHistory.dart';
import 'package:task_blackwhite_02/LeaveManagement/Utility/LeaveCard.dart';

final darkRed = Color(0xffbf2634);

  String text1 = 'Anual Leaves';
  String text2 = 'Casual Leaves';
  String text3 = 'Sick Leaves';

class LeaveManagement extends StatelessWidget {
  const LeaveManagement({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildLeaveAppBar(context, 'Leave Management', true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: null,
                      child: TextButton(               
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LeaveHistroy()));  //linking screen10
                        },
                        child: Text(
                          'Leaves History',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  LeaveCard(text1),
                  LeaveCard(text2),
                  LeaveCard(text3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}