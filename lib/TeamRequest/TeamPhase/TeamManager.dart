import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/TeamRequest/CardContent/Card_Content.dart';
import 'package:task_blackwhite_02/TeamRequest/RequestCards/RequestCard.dart';

import '../TeamAppBar.dart';

class TeamManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
           RequestCardApproved(requestA, content),
            RequestCardSimple(requestB, content, true),
            RequestCardSimple(requestC, content, true),
          ],
        ),
      ),
    );
  }
}
