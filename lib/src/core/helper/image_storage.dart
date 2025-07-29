import 'package:shared_preferences/shared_preferences.dart';

class ImagePathStorage {
  static const _key = 'local_image_path';

  static Future<void> saveLocalPath(String path) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, path);
  }

  static Future<String?> loadLocalPath() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_key);
  }
}
