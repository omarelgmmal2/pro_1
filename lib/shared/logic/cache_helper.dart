import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late final SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> clear(){
    return _prefs.clear();
  }

  static bool isAuth(){
    String? token = _prefs.getString("token");
    return token!= null  || (token??"").isNotEmpty;
  }

 /* static Future<void> saveUserData(UserModel model) async{
    await _prefs.setString("phone", model.phone);
    await _prefs.setString("email", model.email);
    await _prefs.setString("token", model.token);
    await _prefs.setString("image", model.image);
    await _prefs.setString("full_name", model.fullname);
    await _prefs.setBool("isActive", model.isActive);
    //await _prefs.setString("city_id", model.city!.id);
  }*/
}