import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/DotBar/DotBar.dart';
import 'package:task_blackwhite_02/Performance/Utility/Rating.dart';
import 'package:task_blackwhite_02/Performance/mainPerformanePage.dart';

import '../PerformanceAppBar.dart';

final orange = Colors.orange[400];
final green = Colors.green[400];
final red = Colors.red[400];
final white = Colors.white;


class LearningTwo extends StatelessWidget {
  const LearningTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCircleAppBar(context),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: DotLineBar(3),
            ),
            Spacer(flex: 2),
            //=======================================//
            Text(
              'Learning',
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            //=========================================//
            SizedBox(height: 10),
            StarReview(orange,'On Job Learing', orange),
            StarReview(green, 'Functional',green),
            StarReview(null, 'Softskills', red),
            Spacer(flex: 8),
            //=========================================//
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).
                 pushReplacement(MaterialPageRoute(builder: (contex) => MainPerformancePage()));
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 160, right: 160, top: 20, bottom: 20)),
                    elevation: MaterialStateProperty.all(7),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: BorderSide(color: Colors.red)
                    ))),
                child: Text('Close')),
                Spacer(flex: 2),
            //=================================================//
          ],
        ),
      ),
    );
  }
}