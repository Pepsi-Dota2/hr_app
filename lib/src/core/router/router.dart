import 'package:auto_route/auto_route.dart';
import 'package:hr_app/src/core/router/router_guard.dart';
import 'package:hr_app/src/module/auth/pages/auth.dart';
import 'package:hr_app/src/module/auth/pages/register.dart';
import 'package:hr_app/src/module/dashboard/page/dashboard.dart';
import 'package:hr_app/src/module/employee/page/employee.dart';
import 'package:hr_app/src/module/home/page/home.dart';
import 'package:hr_app/src/module/profile/page/profile.dart';
import 'package:hr_app/src/module/salary/page/salary.dart';
import 'package:hr_app/src/module/salary/page/sumary_salary.dart';
import 'package:hr_app/src/module/work_time_record/page/work_time_record.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: DashboardRoute.page, initial: true, guards: [AuthGuard()]),
    AutoRoute(page: HomeRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: EmployeeRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: SalaryRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: SumarySalaryRoute.page, guards: [AuthGuard()]),
  ];
}
