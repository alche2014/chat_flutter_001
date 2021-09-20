import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';
import 'package:task_blackwhite_02/LeaveManagement/Utility/LeaveHistoryCard.dart';

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

class MainRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Request', true),
      body: SingleChildScrollView(
        child: Column(
          //using Listview to list all widget
          children: [
            headViewList('Team Request', 'orange'),
      
            PendingRequest('Pending Request'), //called from below
            headViewList('My Request', 'orange'),
            
            //----------------------------------------//
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

//-------------------------------------------------------//

class CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        child: Row(
          children: [
            OutlinedButton(
              child: Text("+Create Request"),
              style: OutlinedButton.styleFrom(
                  primary: darkRed,
                  backgroundColor: Colors.transparent,
                  onSurface: Colors.orangeAccent,
                  side: BorderSide(color: darkRed, width: 1)),
              onPressed: () {
                //                             Navigator.of(context)
                // .push(MaterialPageRoute(builder: (context) => Screen25()));
              },
            ),
            SizedBox(width: 150),
            GestureDetector(
              onTap: null,
              child: Container(
                  child: Row(
                children: [
                  Text('Filter',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                  SizedBox(width: 2),
                  Icon(Icons.tune),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

Padding headViewList(String head, String icon,) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: ListTile(
      leading:
          Image(image: AssetImage('assets/icons/custom/$icon.png'), height: 40),
      title: Text('$head', style: TextStyle(fontWeight: FontWeight.bold)),
      trailing: TextButton(
          onPressed: () {},
          child: Text('View all', style: TextStyle(color: Color(0xffbf2634)))),
    ),
  );
}

class PendingRequest extends StatelessWidget {
  final String text1;

  PendingRequest(this.text1);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Screen24()));
            },
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
            color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Colors.white
                    : Color(0xff34354A),
              child: Container(
                height: 100,
                padding: EdgeInsets.all(10),
                // margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
            
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //--------------------------------------//
                    Row(children: [
                      //-----------------------------------//
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.transparent,
                        child:
                            ClipRRect(borderRadius: BorderRadius.circular(100)),
                        backgroundImage: AssetImage("assets/icons/roundpink.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      //--------------------------------------//
                      Container(
                        // width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              text1,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 12),
                            Text(
                              '02',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: darkRed,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ]),
                    //-------------------------//
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: lightPink,
                        child: Icon(Icons.arrow_forward_ios, size: 15, color: Colors.black,)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
