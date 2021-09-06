import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Models/ListOfMessages.dart';
import 'package:task_blackwhite_02/constColors.dart';
import 'package:task_blackwhite_02/messages/messagesType.dart';
import 'chat_input.dart';
import 'package:grouped_list/grouped_list.dart';

class MessageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GroupedListView<Message, String>(
              elements: demoChatMessages,
              groupBy: (element) => element.date.toString(),
              groupComparator: (value1, value2) => value2.compareTo(value1),
              itemComparator: (item1, item2) =>
                  item1.text.toString().compareTo(item2.text.toString()),
              order: GroupedListOrder.DESC,
              useStickyGroupSeparators: true,
              groupSeparatorBuilder: (String value) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  value,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              itemBuilder: (c, element) => MessagesType(message: element)
            ),
          ),
        ),
        //---------------------------------------------------//
        ChatInputField(),
      ],
    );
  }
}

// class Message {
//   final String? name;
//   final String? group;
//   final String? time;

//   Message({this.name, this.group, this.time});
// }

// List<Message> demoMessages = [
//   Message(name: 'Soud Haroon',group: 'Team A',time: '02:00'),
//   Message(name: 'Ben',group: 'Team B',time: '04:00'),
//   Message(name: 'Jam',group: 'Team C',time: '09:00'),
//   Message(name: 'Sam Flynn',group: 'Team A',time: '02:00'),
//   Message(name: 'Will Smith',group: 'Team B',time: '04:00'),      
//   Message(name: 'Aculite',group: 'Team B',time: '08:00'),
//   Message(name: 'Jason',group: 'Team D',time: '01:00'),
// ];
//===============================================//

// ListView.builder(
//               itemCount: demoChatMessages.length,
//               itemBuilder: (context, index) => Messages(
//                     message: demoChatMessages[index],
//                   )),