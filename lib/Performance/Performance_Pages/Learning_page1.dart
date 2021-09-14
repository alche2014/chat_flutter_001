import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/DotBar/DotBar.dart';
import 'package:task_blackwhite_02/Performance/Performance_Pages/Learning_page2.dart';
import 'package:task_blackwhite_02/Performance/Utility/Rating.dart';

import '../PerformanceAppBar.dart';

final orange = Colors.orange[400];
final green = Colors.green[400];
final red = Colors.red[400];
final white = Colors.white;


class LearningOne extends StatelessWidget {
  const LearningOne({ Key? key }) : super(key: key);

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
              child: DotLineBar(2),
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
            StarReview(red, 'Softskills', red),
            Spacer(flex: 8),
            //=========================================//
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).
                 push(MaterialPageRoute(builder: (contex) => LearningTwo()));
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                        left: 130, right: 130, top: 20, bottom: 20)),
                    elevation: MaterialStateProperty.all(7),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      // side: BorderSide(color: Colors.red)
                    ))),
                child: Text('View Details')),
                Spacer(flex: 2),
            //=================================================//
          ],
        ),
      ),
    );
  }
}

