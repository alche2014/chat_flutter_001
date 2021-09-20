import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/AppBar/MyAppBar.dart';

import 'Utility/ListofData.dart';

class MainAnnouncement extends StatelessWidget {
  const MainAnnouncement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMyAppBar(context, 'Announcement', true),
      body: ListView.builder(
                  itemCount: annCardData.length,
                  itemBuilder: (context, index) => annCardData[index]),
    );
  }
}
