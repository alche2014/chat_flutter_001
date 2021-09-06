import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Log_Screens/Log.dart';
import 'package:task_blackwhite_02/Log_Screens/Register.dart';

import 'constColors.dart';

class MyTabBarView extends StatefulWidget {
  const MyTabBarView({Key? key}) : super(key: key);

  @override
  _MyTabBarViewState createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            // width: MediaQuery.of(context).size.width * 0.5,
            child: AspectRatio(
              aspectRatio: 1.6,
              child: Image(
                image: AssetImage(
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? 'assets/images/Logo_light.png'
                      : 'assets/images/Logo_dark.png',
                ),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: TabBar(
                controller: _controller,
                labelColor: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? kContentColorLightTheme
                    : kContentColorDarkTheme,
                tabs: [
                  Tab(text: 'Log in'),
                  Tab(
                    text: 'Sign Up',
                  )
                ],
              ),
            ),
            body: TabBarView(
              controller: _controller,
              children: [LogForm(), ResgiterForm()],
            ),
          ),
        ],
      ),
    );
  }
}
