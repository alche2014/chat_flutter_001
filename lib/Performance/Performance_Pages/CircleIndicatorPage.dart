import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/DotBar/DotBar.dart';
import 'package:task_blackwhite_02/Performance/PerformanceAppBar.dart';
import 'package:task_blackwhite_02/Performance/Performance_Pages/Learning_page1.dart';
import 'package:task_blackwhite_02/Performance/Utility/CircleIndicator.dart';

class CircleIndicatorPage extends StatelessWidget {
  const CircleIndicatorPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCircleAppBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: DotLineBar(1),
            ),
            Spacer(),
            //=======================================//
            Text(
              'Overall Performance',
              style: TextStyle(
                  color: MediaQuery.of(context).platformBrightness ==
                  Brightness.light
                    ? Colors.black
                    : Colors.grey,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            CircleIndicator(),//created a Circle Indicator definr below
            Spacer(flex: 3),
            //=============================//
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).
                 push(MaterialPageRoute(builder: (contex) => LearningOne()));
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
                Spacer(),
          ],
        ),
      ),
    );
  }
}