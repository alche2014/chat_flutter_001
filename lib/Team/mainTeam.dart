import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';
import 'package:task_blackwhite_02/MemberDetails/mainMember.dart';
import 'package:task_blackwhite_02/Team/Utility/TeamCards.dart';

class Team extends StatelessWidget {
  const Team({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Team', false),
      body: TeamAllView(),
    );
  }
}

class TeamAllView extends StatelessWidget {
  const TeamAllView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        TeamCard(
            imageName: 'T1',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainMemberDetails()));
            }),
        TeamCard(imageName: 'T2'),
        TeamCard(imageName: 'T3'),
        TeamCard(imageName: 'T4'),
        TeamCard(imageName: 'T1'),
        TeamCard(imageName: 'T2'),
        TeamCard(imageName: 'T3'),
        TeamCard(imageName: 'T4'),
      ]),
    );
  }
}
