
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Utility{
  static const String IMG_KEY = 'Pic_Key';

  static Future<bool> saveProfilePic(String picValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.setString(IMG_KEY, picValue);
  }

  static Future<String> getProfilePic() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString(IMG_KEY).toString();
  }

  static String base64String(Uint8List data) {
    return base64Encode(data);
  }

  static Image imageFromBase64String(String base64String) {
    return Image.memory(base64Decode(base64String), fit: BoxFit.fill,);
  }
}