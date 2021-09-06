import 'package:flutter/material.dart';
import 'Form.dart';
import 'profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDF5FF),
      appBar: buildAppBar(),
      body: ListView(
        children: [
          ImageGetter(),
          SizedBox(height: 20),
          Forms(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      toolbarHeight: 70,
      leading: Icon(Icons.arrow_back_ios, color: Colors.black),
      title: Text('Profile', style: TextStyle(color: Colors.black)),
    );
  }
}
