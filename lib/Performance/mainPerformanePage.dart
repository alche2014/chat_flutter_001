import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Performance/Performance_Pages/CircleIndicatorPage.dart';
import 'PerformanceAppBar.dart';
import 'Utility/CircleIndicator.dart';

// ignore: must_be_immutable
class MainPerformancePage extends StatelessWidget {

  String text1 = 'This Month';
  String text2 = 'January';
  String text3 = 'December';
  String text4 = 'Novermber';
  String base = 'Eveluated by manager name';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCircleAppBar(context),
      body: Column(
        children: [
          Spacer(),
          Content(text1, base),
          Content(text2, base),
          Content(text3, base),
          Content(text4, base),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

//==========================================================//

// ignore: must_be_immutable
class Content extends StatelessWidget {
  String text1;
  String text2;

  Content(this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: InkWell(
        onTap: (){
            Navigator.of(context).
            push(MaterialPageRoute(builder: (contex) => CircleIndicatorPage()));
        },
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),  
          ),
          //==============content==================//
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(text2),
                ],
              ),
              Container(
                height: 30,
                width: 30,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: CircleIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}