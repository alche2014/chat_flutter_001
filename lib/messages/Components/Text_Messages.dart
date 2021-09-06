import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Models/ListOfMessages.dart';

import '../../constColors.dart';

class TextMessages extends StatelessWidget {
  const TextMessages({
    Key? key,
    required this.message,
  }) : super(key: key);

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2),
        decoration: BoxDecoration(
          color: kPrimaryGreen.withOpacity(message.isSender! ? 1 : 0.08),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          message.text.toString(),
          style: TextStyle(
              color: message.isSender!
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyText1?.color),
        ));
  }
}

//--------------------------------------------------//