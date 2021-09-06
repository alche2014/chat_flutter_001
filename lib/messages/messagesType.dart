import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Models/ListOfMessages.dart';
import '../constColors.dart';
import 'Components/Text_Messages.dart';
import 'Components/Video_message.dart';
import 'Components/audio_message.dart';

class MessagesType extends StatelessWidget {
  const MessagesType({
    Key? key,
    required this.message,
  }) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(Message message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessages(message: message);
        //======================================//
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        //======================================//
        case ChatMessageType.video:
          return VideoMessage();
        //=====================================//
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment:
            message.isSender! ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender!)
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
          SizedBox(width: kDefaultPadding / 2),
          //=======================================================//
          messageContaint(message),
          if (message.isSender!)
            MessageStatusDot(
              status: message.messageStatus!,
            )
        ],
      ),
    );
  }
}
//==========================================================================//

class MessageStatusDot extends StatelessWidget {
  final MessageStatus status;

  const MessageStatusDot({Key? key, required this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color? dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return kErrorRedColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryGreen;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.not_sent ? Icons.close : Icons.done,
        size: 9,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
