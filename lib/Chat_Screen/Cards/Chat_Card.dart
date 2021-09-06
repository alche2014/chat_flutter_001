import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Models/Chat.dart';
import '../../constColors.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    @required this.chat,
    @required this.press,
  }) : super(key: key);
  final Chat? chat;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            //----------------------------------------------------------------//
            Stack(
              children: [
                CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(chat!.image.toString())),
                if (chat!.isActive)
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          color: kPrimaryGreen,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              width: 3)),
                    ),
                  ),
              ],
            ),
            //----------------------------------------------------------------//
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //--------------------------------------------------------//
                  Text(chat!.name.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  //----------------------------------------------------------//
                  SizedBox(height: 9),
                  //----------------------------------------------------------//
                  Opacity(
                      opacity: 0.64,
                      child: Text(chat!.lastMessage.toString(),
                          maxLines: 1, overflow: TextOverflow.ellipsis)),
                  //----------------------------------------------------------//
                ],
              ),
            )),
            Opacity(opacity: 0.64, child: Text(chat!.time.toString())),
            //---------------------------//
          ],
        ),
      ),
    );
  }
}
