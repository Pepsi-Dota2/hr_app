class AppApiPath {
  static const String version = "v1";
  static const String baseUrl = "http://10.216.236.59:5002/${version}";
  static const String refreshToken = "${baseUrl}/auth/refresh-token";
  static const String signUp = "${baseUrl}/auth/sign-up";
  static const String signIn = "${baseUrl}/auth/sign-in";
  static const String signOut = "${baseUrl}/auth/sign-out";
}
