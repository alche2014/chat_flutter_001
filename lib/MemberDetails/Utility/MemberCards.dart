import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  //reused card
  final String? headTitle;
  final VoidCallback? press;

  MemberCard({
    this.headTitle,
    this.press,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: press,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.withOpacity(0.1), width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            //============================================//
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //=========================================//
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffF8E7E9),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/icons/person.png'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('$headTitle',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ]),
                //===============================================//
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0xffF8E7E9),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios,
                    size: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}