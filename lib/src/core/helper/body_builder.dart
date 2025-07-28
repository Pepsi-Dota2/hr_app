import 'package:hr_app/src/core/model/body_api_model.dart';

class ApiBodyBuilder {
  static const String _defaultDbType = "mysql";
  static const String _defaultStoreCode = "user_auth";

  static BodyApiModel build(Map<String, dynamic> set, {String? dbType, String? storeCode}) {
    return BodyApiModel(db_type: dbType ?? _defaultDbType, store_code: storeCode ?? _defaultStoreCode, set: set);
  }
}
