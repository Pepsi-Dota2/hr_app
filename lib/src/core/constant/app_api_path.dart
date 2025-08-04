class AppApiPath {
  static const String version = "v1";
  static const String baseUrl = "http://10.216.236.59:5002/${version}";
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
  static const String endWorkRecord = "${baseUrl}/quickserve/employee";

  //admin
  static const String getAllEmployee = "${baseUrl}/quickserve/employee";
  static const String getAllAuth = "${baseUrl}/quickserve/employee/auth";
  static const String getOneEmployee = "${baseUrl}/quickserve/employee";
  static const String createEmployee = "${baseUrl}/quickserve/employee/add";
  static const String updateEmployee = "${baseUrl}/quickserve/employee";
  static const String deleteEmployee = "${baseUrl}/quickserve/employee";

  static const String getAllSalary = "${baseUrl}/quickserve/employee/salary-counter";
  static const String getOneSalary = "${baseUrl}//quickserve/employee";
  static const String getAllDepartment = "${baseUrl}/quickserve/department";
  static const String getAllPosition = "${baseUrl}/quickserve/position";
  static const String createDeduction = "${baseUrl}/quickserve/employee/deduction/add";
  static const String getAllDeduction = "${baseUrl}/quickserve/employee/deduction";
  static const String getAllleave = "${baseUrl}/quickserve/employee/leave-detail/nofilter";
  static const String getOneleave = "${baseUrl}/quickserve/employee";
  static const String createleave = "${baseUrl}/quickserve/employee/leave-detail/add";
  static const String updateLeave = "${baseUrl}/quickserve/employee";
  static const String deleteLeave = "${baseUrl}/quickserve/employee/leave-detail";

  static const String createPosition = "${baseUrl}/quickserve/position/add";
  static const String createDepartment = "${baseUrl}/quickserve/department/add";
  static const String updateDepartment = "${baseUrl}/quickserve/department";
  static const String getOneDepartment = "${baseUrl}/quickserve/department";
  static const String deleteDepartment = "${baseUrl}/quickserve/department";

  static const String getAllBonus = "${baseUrl}/quickserve/employee/bonus";
  static const String updatePosition = "${baseUrl}/quickserve/position";
  static const String getOnePosition = "${baseUrl}/quickserve/position";
  static const String deletePosition = "${baseUrl}/quickserve/position";
  //upload
  static const String uploadImage = "${baseUrl}/upload/image/local";
}
