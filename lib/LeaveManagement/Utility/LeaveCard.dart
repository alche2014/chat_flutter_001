import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/LeaveManagement/Utility/showDialog.dart';

final Color darkredForWhite = Color(0xffbf2634);
final Color lightRedForDark = Color(0xffffcdd2);
final Color lightGreen = Color(0xffD6FBE0);
final lightPink = Color(0xffF8E7E9);

// ignore: must_be_immutable
class LeaveCard extends StatelessWidget {
  //resue card but with chainging
  String? text;
  VoidCallback? press;
  LeaveCard({this.text, this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    backgroundImage: AssetImage(
                        "assets/icons/roundblue.png"), //using profilepic
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Text(text!),
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
                          style:
                              TextStyle(color: Colors.red[800], fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//=============================================================//

// ignore: must_be_immutable
class MyCustomCard extends StatelessWidget {
  String? header;
  String? body;
  bool? status;
  bool? buttonToggle;
  bool? statusToggle;
  bool? picOrName;

  MyCustomCard(
      {this.header,
      this.body,
      this.status,
      this.buttonToggle,
      this.statusToggle,
      this.picOrName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$header',
                      style: TextStyle(
                        color: MediaQuery.of(context).platformBrightness ==
                                Brightness.light
                            ? darkredForWhite
                            : lightRedForDark, //color red
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    //==============================================//
                    if (statusToggle == true)
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: status == true ? lightGreen : lightPink,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: status == true
                                ? Text('Approved', textAlign: TextAlign.center)
                                : Text('Pending', textAlign: TextAlign.center),
                          )),
                    //----------------------------------------//
                    if (statusToggle == false)
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              color:
                                  MediaQuery.of(context).platformBrightness ==
                                          Brightness.light
                                      ? darkredForWhite
                                      : lightRedForDark),
                        ),
                      ),
                    if (status == null) SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              //==================================//
              if (picOrName == true)
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('assets/images/user.png'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lee Williamson'),
                        Text('Designation'),
                      ],
                    ),
                  ],
                ),
              if (picOrName == false)
                Text('Name Here',
                    style: TextStyle(
                      color: MediaQuery.of(context).platformBrightness ==
                              Brightness.light
                          ? darkredForWhite
                          : lightRedForDark, //color red
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    )),
              if (picOrName == null) SizedBox(),
              //===============================================//
              SizedBox(height: 20.0),
              Text(
                '$body',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 30),
              Text(
                '14:01 20/10/2020',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10),
              if (buttonToggle == true)
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary:
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? darkredForWhite
                                    : lightRedForDark),
                        child: Text('Reject')),
                    SizedBox(width: 10),
                    //------------------//
                    ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => TeamManager()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary:
                                MediaQuery.of(context).platformBrightness ==
                                        Brightness.light
                                    ? Colors.green[700]
                                    : lightGreen),
                        child: Text(
                          'Approved',
                          // style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              if (buttonToggle == false)
                Row(
                  children: [
                    Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: lightGreen,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Approved',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        )),
                  ],
                ),
              if (buttonToggle == null) SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
