import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImageGetter extends StatefulWidget {
  @override
  _ImageGetterState createState() => _ImageGetterState();
}

class _ImageGetterState extends State<ImageGetter> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Access Rejected: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //=======================================//
          SizedBox(height: 10),
          CircleAvatar(
            radius: (40),
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: image != null
                  ? Image.file(image!)
                  : Image.asset("assets/Soud.jpg"),
            ),
          ),
          SizedBox(height: 12),
          Text('Name Here', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          Text('Front-End UI', style: TextStyle(color: Colors.grey)),

          TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext bc) {
                      return Container(
                        child: new Wrap(
                          children: <Widget>[
                            new ListTile(
                                leading: new Icon(Icons.camera_alt),
                                title: new Text('Camera'),
                                onTap: () => {}),
                            new ListTile(
                              leading: new Icon(Icons.image),
                              title: new Text('Gallery'),
                              onTap: () => pickImage(),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Edit', style: TextStyle(color: Colors.black)),
                    SizedBox(width: 2),
                    Icon(Icons.edit_outlined, size: 18),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
