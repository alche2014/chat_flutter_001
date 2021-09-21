import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Performance/PerformanceTab/PerformanceTab.dart';

class BirthDayCard extends StatelessWidget {
  //creating birthday card
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => PerformanceTabBar()));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                child: Row(
                  children: [
                    Container(
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: Image.asset("assets/images/picture_1.png")),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hamza Ali'),
                        Text('20 May 2020'),
                        Text('3 day'),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.celebration,
                          size: 40,
                          color: Colors.red[700],
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Hamza Ali'),
                              content: Text('Happy Birthday'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Okay'),
                                )
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
