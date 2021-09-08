import 'package:shared_preferences/shared_preferences.dart';

class UserSaveData {

UserSaveData._privateConstructor();
 
  static final UserSaveData instance =
      UserSaveData._privateConstructor();
 
  setStringValue(String key, String value) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setString(key, value);
  }
 
  Future<String> getStringValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(key) ?? "";
  }


  // static SharedPreferences? preferences;

  // static const _keyUsername = 'username';
  // static const _keyFathername = 'fathername';
  // static const _keyEmail = 'email';
  // static const _keyPhone = 'phone';
  // static const _keyGender = 'gender';
  // static const _keyStatus = 'status';

  // static Future init() async =>
  //     preferences = await SharedPreferences.getInstance();

  // static Future setString() async =>
  //     preferences = await SharedPreferences.getInstance();

//   void saveAddress() async {
//   var sharedPreferences = await SharedPreferences.getInstance();
//   sharedPreferences.setString(_keyUsername, 'username');
//   sharedPreferences.setString(_keyFathername, 'fathername');
//   sharedPreferences.setString(_keyEmail, 'email');
//   sharedPreferences.setInt(_keyPhone, 123);
//   print('address saved');
//   }

// void fetchAddress() async {
// final prefs = await SharedPreferences.getInstance();
// prefs.getString(_keyUsername);
// prefs.getString(_keyFathername);
// prefs.getString(_keyEmail);
// prefs.getInt(_keyPhone);

}

  // static Future setUsername(String username, String fathername) async =>
  //     await preferences!.setString(_keyUsername, username);

  // static String getUsername() =>
  //     preferences!.getString(_keyUsername).toString();

  // static Future setFathername(String fathername) async =>
  //     await preferences!.setString(_keyFathername, fathername);

  // static String getFathername() =>
  //     preferences!.getString(_keyFathername).toString();

  // static Future setEmail(String email) async =>
  //     await preferences!.setString(_keyEmail, email);

  // static String getEmail() => preferences!.getString(_keyEmail).toString();

  // static Future setPhone(int phone) async =>
  //     await preferences!.setInt(_keyPhone, phone);

  // static int? getPhone() => preferences!.getInt(_keyPhone);
// }
