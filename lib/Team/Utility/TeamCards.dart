import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final String? imageName;
  final VoidCallback? press;
  TeamCard({this.imageName, this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Material(
        elevation: 1,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        //========================================//
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: press,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              //========================================//
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Colors.white
                      : Color(0xff34354A),
            ),
            child: Row(children: [
              CircleAvatar(
                radius: (35),
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/$imageName.png"),
                ),
              ),
              //======================================//
              SizedBox(width: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('Lee Williamson',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                Text('Designation', style: TextStyle(color: Colors.grey)),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
