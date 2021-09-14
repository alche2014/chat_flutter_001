import 'package:flutter/material.dart';

final darkRed = Color(0xffbf2634);
final lightPink = Color(0xffF8E7E9);
final lightGreen = Color(0xffD6FBE0);

// ignore: must_be_immutable
class Chips extends StatelessWidget {
  String text;

  Chips(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: FittedBox(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: lightPink,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$text', style: TextStyle(fontSize: 14,color: Colors.black)),
                  SizedBox(width: 8),
                  Icon(Icons.clear, size: 18, color: Colors.black),
                ],
              ),
            )),
      ),
    );
  }
}

//----------------Chip Maker-------------------------
class Chipmaker extends StatefulWidget {
  static List<String> choosed = [];
  @override
  _ChipmakerState createState() => _ChipmakerState();
}

class _ChipmakerState extends State<Chipmaker> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(Chipmaker.choosed.length, (int index) {
        return Chip(
          label: Text(Chipmaker.choosed[index]),
          onDeleted: () {
            setState(() {
              Chipmaker.choosed.removeAt(index);
            });
          },
        );
      }),
    );
  }
}


// ignore: must_be_immutable
class DiscriptionField extends StatelessWidget {
  String text;
  DiscriptionField(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        child: TextField(
          maxLines: 5,
          style: TextStyle(),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            hintText: "$text",
            filled: true,
            // fillColor: textFieldColor,
          ),
        ),
      ),
    );
  }
}

Widget getTextField({required String hint}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
    child: SizedBox(
      height: 70,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            filled: true,
            // fillColor: textFieldColor,
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            )),
      ),
    ),
  );
}