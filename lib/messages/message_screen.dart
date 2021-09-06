import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/constColors.dart';
import 'package:task_blackwhite_02/messages/Components/Messagebody.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MessageBody(),
    );
  }

//---------------------------------------------------//
  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/user_2.png'),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Alen Sam', style: TextStyle(fontSize: 19)),
              Text('Active 3m ago', style: TextStyle(fontSize: 12)),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
        IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
