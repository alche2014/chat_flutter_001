import 'package:flutter/material.dart';
import 'CardContent/Card_Content.dart';
import 'RequestCards/RequestCard.dart';
import 'TeamAppBar.dart';

class MyTeamView extends StatefulWidget {
  @override
  _MyTeamViewState createState() => _MyTeamViewState();
}

class _MyTeamViewState extends State<MyTeamView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
          child: buildAppBar(context)),
      body: SingleChildScrollView(
        child: Column(children: [
          //===============================================================//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 20,
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset('assets/icons/filter.png')),
                ),
              ],
            ),
          ),
          //============================================================//
          TeamRequests(),
        ]),
      ),
    );
  }


}

//==================================================//
class TeamRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RequestCardSimple(requestA, content, true),
        RequestCardSimple(requestB, content, true),
        RequestCardSimple(requestC, content, true),
      ],
    );
  }
}
