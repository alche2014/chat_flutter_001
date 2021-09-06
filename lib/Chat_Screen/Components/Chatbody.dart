import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Chat_Screen/Cards/Chat_Card.dart';
import 'package:task_blackwhite_02/My_Buttons/Filloutline_Button.dart';
import 'package:task_blackwhite_02/Models/Chat.dart';
import 'package:task_blackwhite_02/constColors.dart';
import 'package:task_blackwhite_02/messages/message_screen.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryGreen,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recent Message'),
              SizedBox(width: kDefaultPadding),
              FillOutlineButton(press: () {}, text: 'Active', isFilled: false),
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) => ChatCard(
                      chat: chatsData[index],
                      press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()))
                    ))),
      ],
    );
  }
}
