import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static final String _isLoggedInKey = 'isLoggedIn';
  /*static final String _userRoleKey = 'userRole';*/

  static Future<bool> isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }

  static Future<void> setLoggedIn(bool isLoggedIn/*, String userRole*/) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isLoggedInKey, isLoggedIn);
    /*await prefs.setString(_userRoleKey, userRole);*/
  }

  /*static Future<String> getUserRole() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userRoleKey);
  }*/
}
