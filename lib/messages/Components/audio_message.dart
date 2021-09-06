import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Models/ListOfMessages.dart';

import '../../constColors.dart';

class AudioMessage extends StatelessWidget {
  final Message message;
  const AudioMessage({Key? key, required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding / 2.5),
      decoration: BoxDecoration(
        color: kPrimaryGreen.withOpacity(message.isSender! ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender! ? Colors.white : kPrimaryGreen,
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender!
                        ? Colors.white
                        : kPrimaryGreen.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: message.isSender! ? Colors.white : kPrimaryGreen,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text('0.37',
              style: TextStyle(
                  fontSize: 12,
                  color: message.isSender! ? Colors.white : null)),
        ],
      ),
    );
  }
}
