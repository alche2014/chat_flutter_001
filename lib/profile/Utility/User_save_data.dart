import 'package:shared_preferences/shared_preferences.dart';

class UserSaveData {
  UserSaveData._privateConstructor();

  static final UserSaveData instance = UserSaveData._privateConstructor();

  setStringValue(String key, String value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, value);
  }

  Future<String> getStringValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(key) ?? "";
  }
}
