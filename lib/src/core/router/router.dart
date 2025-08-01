import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/core/router/router_guard.dart';
import 'package:hr_app/src/module/admin/dashboard_admin/page/dashboard_admin.dart';
import 'package:hr_app/src/module/admin/department/page/department_admin.dart';
import 'package:hr_app/src/module/admin/employee/page/employee_admin.dart';
import 'package:hr_app/src/module/admin/home/page/home_admin.dart';
import 'package:hr_app/src/module/admin/leave/page/leave_admin.dart';
import 'package:hr_app/src/module/admin/leave/page/leave_admin_detail.dart';
import 'package:hr_app/src/module/admin/postion/page/position_admin.dart';
import 'package:hr_app/src/module/admin/salary/page/deduction.dart';
import 'package:hr_app/src/module/admin/salary/page/history_deduction.dart';
import 'package:hr_app/src/module/admin/salary/page/salary.dart';
import 'package:hr_app/src/module/admin/setting/page/setting.dart';
import 'package:hr_app/src/module/auth/pages/auth.dart';
import 'package:hr_app/src/module/auth/pages/register.dart';
import 'package:hr_app/src/module/dashboard/page/dashboard.dart';
import 'package:hr_app/src/module/employee/page/create_employee.dart';
import 'package:hr_app/src/module/employee/page/employee.dart';
import 'package:hr_app/src/module/home/page/home.dart';
import 'package:hr_app/src/module/leave/page/create_approve.dart';
import 'package:hr_app/src/module/leave/page/leave.dart';
import 'package:hr_app/src/module/profile/page/profile.dart';
import 'package:hr_app/src/module/redirec/redirec.dart';
import 'package:hr_app/src/module/salary/page/salary.dart';
import 'package:hr_app/src/module/salary/page/sumary_salary.dart';
import 'package:hr_app/src/module/work_time_record/page/work_time_record.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: RedirectRoute.page, initial: true),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: DashboardRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: HomeRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: EmployeeRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: SalaryRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: SumarySalaryRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: LeaveRoute.page, guards: [AuthGuard()]),
    AutoRoute(page: CreateApproveRoute.page, guards: [AuthGuard()]),

    //admin
    AutoRoute(page: DashboardAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: EmployeeAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: SettingRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: SalaryAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: DepartmentAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: PositionAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: DeductionAdminRoute.page, path: "/deduction/:emp_id", guards: [AdminGuard()]),
    AutoRoute(page: HistoryDeductionAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: LeaveAdminRoute.page, guards: [AdminGuard()]),
    AutoRoute(page: LeaveAdminDetailAdminRoute.page, guards: [AdminGuard()]),
  ];
}
