import 'package:flutter/material.dart';
import '../constColors.dart';

AppBar buildCircleAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      color: MediaQuery.of(context).platformBrightness == Brightness.light
          ? kContentColorLightTheme
          : Colors.grey,
      onPressed: () => Navigator.of(context).pop(),
    ),
    title: Text(
      'Performance',
      style: TextStyle(
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? kContentColorLightTheme
              : Colors.grey),
    ),
    actions: <Widget>[
      IconButton(
        //bell Icon
        icon: Icon(
          Icons.notifications,
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? kContentColorLightTheme
              : Colors.grey,
        ),
        onPressed: () {},
      )
    ],
  );
}
