class AppApiPath {
  static const String version = "v1";
  static const String baseUrl = "http://10.0.10.95:5002/${version}";
  static const String refreshToken = "${baseUrl}/auth/refresh-token";
  static const String signUp = "${baseUrl}/auth/sign-up";
  static const String signIn = "${baseUrl}/auth/sign-in";
  static const String signOut = "${baseUrl}/auth/sign-out";
  static const String getMe = "${baseUrl}/quickserve/getMe";
  static const String getEmployee = "${baseUrl}/quickserve/employee";

  //employee
  static const String getSalary = "${baseUrl}/quickserve/employee";

  //work record
  static const String startWorkRecord = "${baseUrl}/quickserve/employee/work-record/start";
  static const String endWorkRecord = "${baseUrl}/quickserve/employee/1/work-record/end";

  //upload
  static const String uploadImage = "${baseUrl}/upload/image/local";
}
