import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/LeaveManagement/LeaveAppbar.dart';
import 'package:task_blackwhite_02/LeaveManagement/LeaveHistory/LeaveHistoryHeader.dart';
import 'package:task_blackwhite_02/LeaveManagement/Utility/LeaveHistoryCard.dart';

String leave = 'Leave Type';
String approved = 'apd';
String no = 'no';

String body =
    'Hello guys we have discussed about post-corona vacation plan and our decision is to go to bali';

class LeaveHistroy extends StatelessWidget {
  const LeaveHistroy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildLeaveAppBar(context, 'Leave History' ,true),
      body: SingleChildScrollView(
        child: Column(children: [
          FilterButton(),
          LeaveHistoryCard(leave, body, approved),
          LeaveHistoryCard(leave, '', no),
          LeaveHistoryCard(leave, body, approved),
        ]),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  const FilterButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: FittedBox(
        child: InkWell(
            onTap: (){Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LeaveHistoryHeader()));},
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                  height: 20, child: Image.asset('assets/icons/filter.png')),
            )),
      ),
    );
  }
}

// Container(
          //     height: 280,
          //     child: ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         itemCount: annCardData.length,
          //         itemBuilder: (context, index) => annCardData[index]),
          //   ),