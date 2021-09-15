import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';
import 'package:task_blackwhite_02/Experience/ExperiencePage2.dart';
import 'Utility/chips.dart';

String dis =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali!';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Experience', false),
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileEditCard(),
            getTextField(hint: 'Experience'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Skills'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Wrap(
                children: [
                  ChipsView(),
                ],
              ),
            ),
            getTextField(hint: 'Education'),
            getTextField(hint: 'Interest'),
            DiscriptionField(dis),
          ],
        ),
      ),
    ));
  }
}

class ProfileEditCard extends StatelessWidget {
  const ProfileEditCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            CircleAvatar(
              radius: (50),
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/images/user.png"),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name Here',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Front-End UI', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ]),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExperiencePageTwo()));
            },
            child: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Edit'),
                  SizedBox(width: 2),
                  Icon(Icons.edit_outlined, size: 18),
                ],
              ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
