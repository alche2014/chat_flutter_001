import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Profile/Utility/User_save_data.dart';
import 'package:task_blackwhite_02/Profile/secondProfile.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({Key? key}) : super(key: key);

  @override
  _EditMyProfileState createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            //===============================================//
            Center(
              child: Stack(
                //using stack to lap edit icon over Picture
                children: [
                  ClipRRect(
                    child: Image(
                      height: 100,
                      image: AssetImage('assets/images/user.png'),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 5,
                      child: Image(
                        image: AssetImage('assets/icons/iconBack.png'),
                        width: 30,
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                      bottom: 15,
                      right: 10,
                      child: Icon(
                        Icons.edit_outlined,
                        size: 20,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            //===========================================//
            FormOne(),
            //===========================================//

            SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
//========================================================//

class FormOne extends StatefulWidget {
  @override
  _FormOneState createState() => _FormOneState();
}

class _FormOneState extends State<FormOne> {
  var dropCityValue;
  var dropGenderValue;
  var dropStatusValue;
  var dateOfBirth;

  TextEditingController controllerUserName = new TextEditingController();
  TextEditingController controllerFatherName = new TextEditingController();
  TextEditingController controllerEmail = new TextEditingController();
  TextEditingController controllerAddress = new TextEditingController();
  TextEditingController controllerPhone = new TextEditingController();
  TextEditingController controllerCNIC = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            //-------------------------------------------------//
            //=============Username==================//
            SizedBox(height: 15),
            TextFormField(
              controller: controllerUserName,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300.withOpacity(0.8), width: 2),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: 'Your Name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                final regExp = RegExp(pattern);
                if (value!.isEmpty) {
                  return null;
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter only Alphabets';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            //=============Fathername==================//
            TextFormField(
              controller: controllerFatherName,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300.withOpacity(0.8), width: 2),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: 'Father Name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                final regExp = RegExp(pattern);
                if (value!.isEmpty) {
                  return null;
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter only Alphabets';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            //=============City-Drop=================//
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  width: 2,
                ),
              ),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    hintText: "City",
                    fillColor: Theme.of(context).scaffoldBackgroundColor),
                value: dropCityValue,
                items: <String>['Lahore', 'Karachi', 'Islamabad']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    dropCityValue = value;
                  });
                },
              ),
            ),
            SizedBox(height: 15),
            //============================================//
            //=============Address=================//
            TextFormField(
              controller: controllerAddress,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300.withOpacity(0.8), width: 2),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: 'Address',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                final pattern = ('[a-zA-Z]+([\s][a-zA-Z]+)*');
                final regExp = RegExp(pattern);
                if (value!.isEmpty) {
                  return null;
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter only Alphabets';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            //=============Email=================//
            TextFormField(
              controller: controllerEmail,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300.withOpacity(0.8), width: 2),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                final pattern =
                    (r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                final regExp = RegExp(pattern);

                if (value!.isEmpty) {
                  return null;
                } else if (value.contains(' ')) {
                  return 'can not have blank spaces';
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter a valid email';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            //=============Phone=================//
            TextFormField(
              controller: controllerPhone,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300.withOpacity(0.8), width: 2),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              keyboardType: TextInputType.number,
              validator: (value) {
                final regExp = RegExp('[0-9]');
                if (value!.isEmpty) {
                  return null;
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter only number';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            //=============Gender=================//
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  width: 2,
                ),
              ),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    hintText: "Gender",
                    fillColor: Theme.of(context).scaffoldBackgroundColor),
                value: dropGenderValue,
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    dropGenderValue = value;
                  });
                },
              ),
            ),
            SizedBox(height: 15),
            //============================================//
            //==========Material Status=========//
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade300.withOpacity(0.8),
                  width: 2,
                ),
              ),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.8)),
                    hintText: "Material Status",
                    fillColor: Theme.of(context).scaffoldBackgroundColor),
                value: dropStatusValue,
                items: <String>['Single', 'Married']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  dropStatusValue = value;
                },
              ),
            ),
            SizedBox(height: 15),
            //============================================//
            //===========CNIC===============//
            TextFormField(
              controller: controllerCNIC,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.grey.shade300.withOpacity(0.8), width: 2),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  hintText: 'CNIC No.',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              keyboardType: TextInputType.number,
              validator: (value) {
                final regExp = RegExp('[0-9]');
                if (value!.isEmpty) {
                  return null;
                } else if (!regExp.hasMatch(value)) {
                  return 'Enter CINC';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 15),
            //-------------------------------------------------//
            //===========DateofBirth===========//
            Container(
              height: 60,
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey.shade300.withOpacity(0.8),
                    width: 2,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      dateOfBirth == null
                          ? 'Date of Birth'
                          : '${dateOfBirth!.day}/${dateOfBirth!.month}/${dateOfBirth!.year}'
                              .toString(),
                      style: TextStyle(color: Colors.grey)),
                  IconButton(
                      icon: Icon(Icons.today, color: Colors.grey),
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2022))
                            .then((value) {
                          setState(() {
                            dateOfBirth = value;
                          });
                        });
                      })
                ],
              ),
            ),
            SizedBox(height: 20),
            //-------------------------------------------------//
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      child: Text('Save'), //next button
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        primary: Color(0xffC53B4B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        setState(() {});
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondProfile()));

                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //         builder: (context) => SecondProfile()),
                        //     (Route<dynamic> route) => false);

                        var getEmail = controllerEmail.text;
                        var getUserName = controllerUserName.text;
                        var getFatherName = controllerFatherName.text;
                        var getPhone = controllerPhone.text;
                        var getCnic = controllerCNIC.text;
                        var getAddress = controllerAddress.text;
                        var getCity = dropCityValue;
                        var getGender = dropGenderValue;
                        var getStatus = dropStatusValue;
                        var getDate = dateOfBirth;

                        UserSaveData.instance.setStringValue("email", getEmail);
                        UserSaveData.instance
                            .setStringValue("username", getUserName);
                        UserSaveData.instance
                            .setStringValue("fathername", getFatherName);
                        UserSaveData.instance.setStringValue("phone", getPhone);
                        UserSaveData.instance.setStringValue("cnic", getCnic);
                        UserSaveData.instance.setStringValue("city", getCity);
                        UserSaveData.instance
                            .setStringValue("gender", getGender);
                        UserSaveData.instance
                            .setStringValue("status", getStatus);
                        UserSaveData.instance
                            .setStringValue("date", getDate.toString());
                        UserSaveData.instance
                            .setStringValue("address", getAddress);
                      },
                    ),
                  ),
                ),
              ],
            ),
            //=================================================//
          ],
        ),
      ),
    );
  }
}
