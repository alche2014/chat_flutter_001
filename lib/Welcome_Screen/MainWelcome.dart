import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Log_Screens/Sign_inOut.dart';
import 'package:task_blackwhite_02/constColors.dart';

import '../Tab.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Spacer(flex: 2),
          Image.asset('assets/images/welcome_image.png'),
          Spacer(flex: 3),
          //-------------------------------------------//
          Text(
            'Welcome To Alchemative \nFreeDom App',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          //--------------------------------------------//
          Text(
            'Chat, Discusse, Help Anyone \nin Alchemative',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.color
                    ?.withOpacity(0.64)),
          ),
          Spacer(flex: 3),
          //----------------------------------------------//
          FittedBox(
            child: TextButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabBarView())),
                child: Row(
                  children: [
                    Text(
                      'Skip',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.64)),
                    ),
                    SizedBox(width: kDefaultPadding / 4),
                    Icon(Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.color
                            ?.withOpacity(0.64))
                  ],
                )),
          ),
          Spacer(),
        ],
      )),
    );
  }
}
