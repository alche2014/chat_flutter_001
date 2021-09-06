import 'package:flutter/material.dart';

enum ChatMessageType {
  text,
  audio,
  image,
  video,
}
enum MessageStatus { not_sent, not_view, viewed }

class Message {
  final String? text;
  final String? date;
  final ChatMessageType? messageType;
  final MessageStatus? messageStatus;
  final bool? isSender;

  Message({
    this.text,
    this.date,
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
  });
}


//   new Message(
//     name: 'Danny',
//     group: '30-jan',
//     text: 'This looks great man!!',
//     isSender: false,
//     // messageType: ChatMessageType.text,
//     // messageStatus: MessageStatus.viewed,
//   ),
// ];


//===========================================//
List<Message> demoChatMessages = [
  Message(
    text: "Hi Sam,",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: '01 March 2021',
    isSender: true,
  ),
  Message(
    text: "Hello, How are you?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: '20 August 2021',
    isSender: true,
  ),
  Message(
    text: "",
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  Message(
    text: "",
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.viewed,
    date: '20 August 2021',
    isSender: true,
  ),
  Message(
    text: "Error happend",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: true,
  ),
  Message(
    text: "This looks great man!!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: '14 December 2020',
    isSender: false,
  ),
  Message(
    text: "Glad you like it",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: 'Today',
    isSender: true,
  ),
  Message(
    text: "Hi...!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: true,
  ),
  Message(
    text: "Send me Location",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: true,
  ),
  Message(
    text: "Where are you???",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: '20 August 2021',
    isSender: true,
  ),
  Message(
    text: "I'm Home...",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  Message(
    text: "See you on Monday...",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Today',
    isSender: false,
  ),
  Message(
    text: "Hello? Whats for launch????",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  Message(
    text: "....",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    date: 'Yesterday',
    isSender: true,
  ),
  Message(
    text: "Meet me at KFC",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  Message(
    text: "Ben???",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: '15 Setember 2021',
    isSender: true,
  ),
  Message(
    text: "Yes",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: '10 March 2021',
    isSender: false,
  ),
  Message(
    text: "I forgot..",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: true,
  ),
  Message(
    text: "I'll be there...",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
  Message(
    text: "Hello World!",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    date: '20 Octuber 2021',
    isSender: true,
  ),
  Message(
    text: "Hello you :)",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    date: 'Today',
    isSender: false,
  ),
];
