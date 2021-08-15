import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences prefs;

  static Future init() async => prefs = await SharedPreferences.getInstance();

  static bool containsKey(String key) => prefs.containsKey("idToken");

  static clear() {
    prefs.clear();
  }

  static setID(String value) {

   prefs.setString('idToken', value);
}

  static Future<bool> setFname(String value) => prefs.setString('FName', value);

  static Future<bool> setLname(String value) => prefs.setString('LName', value);
}
