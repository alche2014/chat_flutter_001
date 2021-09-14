import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Performance/mainPerformanePage.dart';
import 'package:task_blackwhite_02/Profile/secondProfile.dart';
import 'package:task_blackwhite_02/TeamRequest/MainTeamPage.dart';

import '../constColors.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios, color: MediaQuery.of(context).platformBrightness == Brightness.light
          ? kContentColorLightTheme
          : Colors.grey),
        title: Text('My Profile', style: TextStyle(color: MediaQuery.of(context).platformBrightness == Brightness.light
          ? kContentColorLightTheme
          : Colors.grey) )
      ),
      //===============================================//
      body: Column(
        children: [
          Spacer(),
          ProfilePic(),
          Spacer(),
          ProfileCard(
              headTitle: 'Personal Information',
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondProfile()));
              }),
          ProfileCard(headTitle: 'Education Information', press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyTeamView()));
              }),
          ProfileCard(headTitle: 'Experience Information', press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPerformancePage()));
              }),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
//==============================================//

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(children: [
          SizedBox(width: 10),
          CircleAvatar(
            radius: (50),
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/images/user.png"),
            ),
          ),
          SizedBox(width: 20),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Name Here', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Front-End UI', style: TextStyle(color: Colors.grey)),
          ]),
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class ProfileCard extends StatelessWidget {
  //reused card
  String? headTitle;
  final VoidCallback? press;

  ProfileCard({
    this.headTitle,
    this.press,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: press,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            //============================================//
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //=========================================//
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffF8E7E9),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/icons/person.png'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('$headTitle',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                //===============================================//
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xffF8E7E9),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios,
                    size: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
