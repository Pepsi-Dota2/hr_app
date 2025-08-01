import 'package:hr_app/src/core/model/body_api_where_model.dart';

class ApiBodyBuilderWhere {
  static const String _defaultDbType = "mysql";
  static const String _defaultStoreCode = "user_auth";

  static BodyApiWhereModel buildWhere(Map<String, dynamic> where, {String? storeCode, String? dbType}) {
    return BodyApiWhereModel(db_type: dbType ?? _defaultDbType, store_code: storeCode ?? _defaultStoreCode, where: where);
  }
}
