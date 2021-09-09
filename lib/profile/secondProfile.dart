import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Profile/ThirdProfile.dart';
import 'package:task_blackwhite_02/Profile/Utility/User_save_data.dart';

class SecondProfile extends StatefulWidget {
  const SecondProfile({Key? key}) : super(key: key);

  @override
  _SecondProfileState createState() => _SecondProfileState();
}

class _SecondProfileState extends State<SecondProfile> {
  String username = "";
  String fathername = "";
  String email = "";
  String phone = "";
  String address = "";
  String cnic = "";
  String date = "";
  String gender = "";
  String status = "";

  @override
  void initState() {
    super.initState();
    setState(() {});
    UserSaveData.instance
        .getStringValue("username")
        .then((value) => setState(() {
              username = value;
            }));
    UserSaveData.instance
        .getStringValue("fathername")
        .then((value) => setState(() {
              fathername = value;
            }));
        UserSaveData.instance
        .getStringValue("email")
        .then((value) => setState(() {
              email = value;
            }));
        UserSaveData.instance
        .getStringValue("address")
        .then((value) => setState(() {
              address = value;
            }));
        UserSaveData.instance
        .getStringValue("cnic")
        .then((value) => setState(() {
              cnic = value;
            }));
        UserSaveData.instance
        .getStringValue("phone")
        .then((value) => setState(() {
              phone = value;
            }));
        UserSaveData.instance
        .getStringValue("date")
        .then((value) => setState(() {
              date = value;
            }));
        UserSaveData.instance
        .getStringValue("gender")
        .then((value) => setState(() {
              gender = value;
            }));
        UserSaveData.instance
        .getStringValue("status")
        .then((value) => setState(() {
              status = value;
            }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        CircleAvatar(
                          radius: (50),
                          backgroundColor: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/images/user.png"),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name Here',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Text('Front-End UI',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ]),
                      
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditMyProfile()));
                        },
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Edit'),
                              SizedBox(width: 2),
                              Icon(Icons.edit_outlined, size: 18),
                            ],
                          ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
                //==========================================================//
                SizedBox(height: 30),
                Column(
                  children: [
                    MyTextField(hint: username == "" ? 'Your Name' : username),
                    MyTextField(hint: fathername == "" ? 'Your FatherName': fathername), // 2
                    MyTextField(hint: email == "" ? 'Your Email' : email), // 3
                    MyTextField(hint: phone == "" ? '0312-123456789' : phone), // 4
                    MyTextField(hint: address == "" ? 'Address' : address), // 5
                    MyTextField(hint: gender == "" ? 'Gender' : gender), //
                    MyTextField(hint: status == "" ? 'Material Status' : status), // 6
                    MyTextField(hint: cnic == "" ?  'CNIC' : cnic), // 7
                    MyTextField(hint: date == "" ? 'Date of Birth' : date), // 8
                    MyTextField(hint: 'Your Name'), // 9
                    //=========================================================//
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hint,
  }) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
          decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
              color: Colors.grey.shade300.withOpacity(0.8), width: 2),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        filled: true,
        fillColor: Theme.of(context).scaffoldBackgroundColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      )),
    );
  }
}
//=====================ignore below==========================//
  // _SecondProfileState() {
  //   UserSaveData.instance
  //       .getStringValue("username")
  //       .then((value) => setState(() {
  //             username = value;
  //           }));

  //   UserSaveData.instance
  //       .getStringValue("fathername")
  //       .then((value) => setState(() {
  //             fathername = value;
  //           }));

  //   UserSaveData.instance.getStringValue("email").then((value) => setState(() {
  //         email = value;
  //       }));
  //   UserSaveData.instance.getStringValue("phone").then((value) => setState(() {
  //         phone = value;
  //       }));
  // }

  // @override
  // void initState() {
  //       UserSaveData.instance
  //       .getStringValue("username")
  //       .then((value) => setState(() {
  //             username = value;
  //           }));
  //   super.initState();
  // }

  // TextButton(
  //   onPressed: () {
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => EditMyProfile()));
  //   },
  //   child:

    // saveData() {
  //   // UserSaveData.instance
  //   //     .getStringValue("username")
  //   //     .then((value) => setState(() {
  //   //           username = value;
  //   //         }));

  //   UserSaveData.instance
  //       .getStringValue("fathername")
  //       .then((value) => setState(() {
  //             fathername = value;
  //           }));
  // }