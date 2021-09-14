import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/TeamRequest/CardContent/Card_Content.dart';
import 'package:task_blackwhite_02/TeamRequest/RequestCards/RequestCard.dart';

import '../TeamAppBar.dart';

class TeamProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
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
          RequestCardImage(requestA, content),
        ],
      ),
    );
  }
}

