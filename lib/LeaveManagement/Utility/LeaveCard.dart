import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/LeaveManagement/Utility/showDialog.dart';

// ignore: must_be_immutable
class LeaveCard extends StatelessWidget {
  //resue card but with chainging
  String text;
  LeaveCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2),
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.grey[100],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundImage:
                      AssetImage("assets/icons/roundblue.png"), //using profilepic
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(text),
                    SizedBox(height: 5),
                    Text('20 anual leaves pending',
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                    TextButton(
                      onPressed: () {
                        applyLeave(context);
                      },
                      child: Text(
                        //on card
                        'Apply Now',
                        style: TextStyle(color: Colors.red[800], fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
