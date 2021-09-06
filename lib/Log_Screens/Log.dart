import 'package:flutter/material.dart';
import 'package:task_blackwhite_02/Chat_Screen/Chat_Ui.dart';
import 'package:task_blackwhite_02/My_Buttons/Primary_Button.dart';
import 'package:task_blackwhite_02/constColors.dart';

class LogForm extends StatelessWidget {
  const LogForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Spacer(flex: 2),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent, width: 0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  filled: true,
                  fillColor: Colors.grey[500]?.withOpacity(0.64),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )),
              autovalidateMode: AutovalidateMode.onUserInteraction,
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
            //===============================================================//
            SizedBox(height: 20),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[500]?.withOpacity(0.64),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                validator: (value) {
                  if (value!.contains(' ')) {
                    return 'Password can not contain blank Spaces';
                  } else if (value.length < 6) {
                    return 'Enter atleast 8 characters';
                  } else
                    return null;
                }),
            Spacer(flex: 2),
            PrimaryButton(text: 'Log in', press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()))),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
