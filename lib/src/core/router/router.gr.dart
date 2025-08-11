// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AuthPage());
    },
  );
}

/// generated route for
/// [CreateApprovePage]
class CreateApproveRoute extends PageRouteInfo<void> {
  const CreateApproveRoute({List<PageRouteInfo>? children})
    : super(CreateApproveRoute.name, initialChildren: children);

  static const String name = 'CreateApproveRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CreateApprovePage());
    },
  );
}

/// generated route for
/// [CreateDepartmentPage]
class CreateDepartmentRoute extends PageRouteInfo<CreateDepartmentRouteArgs> {
  CreateDepartmentRoute({Key? key, int? id, List<PageRouteInfo>? children})
    : super(
        CreateDepartmentRoute.name,
        args: CreateDepartmentRouteArgs(key: key, id: id),
        rawPathParams: {'id': id},
        initialChildren: children,
      );

  static const String name = 'CreateDepartmentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CreateDepartmentRouteArgs>(
        orElse: () => CreateDepartmentRouteArgs(id: pathParams.optInt('id')),
      );
      return WrappedRoute(
        child: CreateDepartmentPage(key: args.key, id: args.id),
      );
    },
  );
}

class CreateDepartmentRouteArgs {
  const CreateDepartmentRouteArgs({this.key, this.id});

  final Key? key;

  final int? id;

  @override
  String toString() {
    return 'CreateDepartmentRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateDepartmentRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [CreateEmployeeAdminPage]
class CreateEmployeeAdminRoute
    extends PageRouteInfo<CreateEmployeeAdminRouteArgs> {
  CreateEmployeeAdminRoute({Key? key, int? id, List<PageRouteInfo>? children})
    : super(
        CreateEmployeeAdminRoute.name,
        args: CreateEmployeeAdminRouteArgs(key: key, id: id),
        rawPathParams: {'id': id},
        initialChildren: children,
      );

  static const String name = 'CreateEmployeeAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CreateEmployeeAdminRouteArgs>(
        orElse: () => CreateEmployeeAdminRouteArgs(id: pathParams.optInt('id')),
      );
      return WrappedRoute(
        child: CreateEmployeeAdminPage(key: args.key, id: args.id),
      );
    },
  );
}

class CreateEmployeeAdminRouteArgs {
  const CreateEmployeeAdminRouteArgs({this.key, this.id});

  final Key? key;

  final int? id;

  @override
  String toString() {
    return 'CreateEmployeeAdminRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateEmployeeAdminRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [CreateEmployeePage]
class CreateEmployeeRoute extends PageRouteInfo<void> {
  const CreateEmployeeRoute({List<PageRouteInfo>? children})
    : super(CreateEmployeeRoute.name, initialChildren: children);

  static const String name = 'CreateEmployeeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CreateEmployeePage());
    },
  );
}

/// generated route for
/// [CreatePositionPage]
class CreatePositionRoute extends PageRouteInfo<CreatePositionRouteArgs> {
  CreatePositionRoute({Key? key, int? id, List<PageRouteInfo>? children})
    : super(
        CreatePositionRoute.name,
        args: CreatePositionRouteArgs(key: key, id: id),
        rawPathParams: {'id': id},
        initialChildren: children,
      );

  static const String name = 'CreatePositionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<CreatePositionRouteArgs>(
        orElse: () => CreatePositionRouteArgs(id: pathParams.optInt('id')),
      );
      return WrappedRoute(
        child: CreatePositionPage(key: args.key, id: args.id),
      );
    },
  );
}

class CreatePositionRouteArgs {
  const CreatePositionRouteArgs({this.key, this.id});

  final Key? key;

  final int? id;

  @override
  String toString() {
    return 'CreatePositionRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreatePositionRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [DashboardAdminPage]
class DashboardAdminRoute extends PageRouteInfo<void> {
  const DashboardAdminRoute({List<PageRouteInfo>? children})
    : super(DashboardAdminRoute.name, initialChildren: children);

  static const String name = 'DashboardAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardAdminPage();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [DeductionAdminPage]
class DeductionAdminRoute extends PageRouteInfo<DeductionAdminRouteArgs> {
  DeductionAdminRoute({
    Key? key,
    required String empid,
    List<PageRouteInfo>? children,
  }) : super(
         DeductionAdminRoute.name,
         args: DeductionAdminRouteArgs(key: key, empid: empid),
         rawPathParams: {'emp_id': empid},
         initialChildren: children,
       );

  static const String name = 'DeductionAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DeductionAdminRouteArgs>(
        orElse: () =>
            DeductionAdminRouteArgs(empid: pathParams.getString('emp_id')),
      );
      return WrappedRoute(
        child: DeductionAdminPage(key: args.key, empid: args.empid),
      );
    },
  );
}

class DeductionAdminRouteArgs {
  const DeductionAdminRouteArgs({this.key, required this.empid});

  final Key? key;

  final String empid;

  @override
  String toString() {
    return 'DeductionAdminRouteArgs{key: $key, empid: $empid}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DeductionAdminRouteArgs) return false;
    return key == other.key && empid == other.empid;
  }

  @override
  int get hashCode => key.hashCode ^ empid.hashCode;
}

/// generated route for
/// [DepartmentAdminPage]
class DepartmentAdminRoute extends PageRouteInfo<void> {
  const DepartmentAdminRoute({List<PageRouteInfo>? children})
    : super(DepartmentAdminRoute.name, initialChildren: children);

  static const String name = 'DepartmentAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const DepartmentAdminPage());
    },
  );
}

/// generated route for
/// [EmployeeAdminPage]
class EmployeeAdminRoute extends PageRouteInfo<void> {
  const EmployeeAdminRoute({List<PageRouteInfo>? children})
    : super(EmployeeAdminRoute.name, initialChildren: children);

  static const String name = 'EmployeeAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const EmployeeAdminPage());
    },
  );
}

/// generated route for
/// [EmployeePage]
class EmployeeRoute extends PageRouteInfo<void> {
  const EmployeeRoute({List<PageRouteInfo>? children})
    : super(EmployeeRoute.name, initialChildren: children);

  static const String name = 'EmployeeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const EmployeePage());
    },
  );
}

/// generated route for
/// [HistoryDeductionAdminPage]
class HistoryDeductionAdminRoute extends PageRouteInfo<void> {
  const HistoryDeductionAdminRoute({List<PageRouteInfo>? children})
    : super(HistoryDeductionAdminRoute.name, initialChildren: children);

  static const String name = 'HistoryDeductionAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HistoryDeductionAdminPage());
    },
  );
}

/// generated route for
/// [HolidayAdminPage]
class HolidayAdminRoute extends PageRouteInfo<void> {
  const HolidayAdminRoute({List<PageRouteInfo>? children})
    : super(HolidayAdminRoute.name, initialChildren: children);

  static const String name = 'HolidayAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HolidayAdminPage());
    },
  );
}

/// generated route for
/// [HomeAdminPage]
class HomeAdminRoute extends PageRouteInfo<void> {
  const HomeAdminRoute({List<PageRouteInfo>? children})
    : super(HomeAdminRoute.name, initialChildren: children);

  static const String name = 'HomeAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeAdminPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomePage());
    },
  );
}

/// generated route for
/// [LeaveAdminDetailAdminPage]
class LeaveAdminDetailAdminRoute
    extends PageRouteInfo<LeaveAdminDetailAdminRouteArgs> {
  LeaveAdminDetailAdminRoute({
    Key? key,
    required String userId,
    List<PageRouteInfo>? children,
  }) : super(
         LeaveAdminDetailAdminRoute.name,
         args: LeaveAdminDetailAdminRouteArgs(key: key, userId: userId),
         rawPathParams: {'userId': userId},
         initialChildren: children,
       );

  static const String name = 'LeaveAdminDetailAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<LeaveAdminDetailAdminRouteArgs>(
        orElse: () => LeaveAdminDetailAdminRouteArgs(
          userId: pathParams.getString('userId'),
        ),
      );
      return WrappedRoute(
        child: LeaveAdminDetailAdminPage(key: args.key, userId: args.userId),
      );
    },
  );
}

class LeaveAdminDetailAdminRouteArgs {
  const LeaveAdminDetailAdminRouteArgs({this.key, required this.userId});

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'LeaveAdminDetailAdminRouteArgs{key: $key, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LeaveAdminDetailAdminRouteArgs) return false;
    return key == other.key && userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode;
}

/// generated route for
/// [LeaveAdminPage]
class LeaveAdminRoute extends PageRouteInfo<void> {
  const LeaveAdminRoute({List<PageRouteInfo>? children})
    : super(LeaveAdminRoute.name, initialChildren: children);

  static const String name = 'LeaveAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LeaveAdminPage());
    },
  );
}

/// generated route for
/// [LeavePage]
class LeaveRoute extends PageRouteInfo<void> {
  const LeaveRoute({List<PageRouteInfo>? children})
    : super(LeaveRoute.name, initialChildren: children);

  static const String name = 'LeaveRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LeavePage());
    },
  );
}

/// generated route for
/// [PositionAdminPage]
class PositionAdminRoute extends PageRouteInfo<void> {
  const PositionAdminRoute({List<PageRouteInfo>? children})
    : super(PositionAdminRoute.name, initialChildren: children);

  static const String name = 'PositionAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const PositionAdminPage());
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfilePage());
    },
  );
}

/// generated route for
/// [RedirectPage]
class RedirectRoute extends PageRouteInfo<void> {
  const RedirectRoute({List<PageRouteInfo>? children})
    : super(RedirectRoute.name, initialChildren: children);

  static const String name = 'RedirectRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RedirectPage();
    },
  );
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RegisterPage());
    },
  );
}

/// generated route for
/// [SalaryAdminPage]
class SalaryAdminRoute extends PageRouteInfo<void> {
  const SalaryAdminRoute({List<PageRouteInfo>? children})
    : super(SalaryAdminRoute.name, initialChildren: children);

  static const String name = 'SalaryAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SalaryAdminPage());
    },
  );
}

/// generated route for
/// [SalaryPage]
class SalaryRoute extends PageRouteInfo<void> {
  const SalaryRoute({List<PageRouteInfo>? children})
    : super(SalaryRoute.name, initialChildren: children);

  static const String name = 'SalaryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SalaryPage());
    },
  );
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
    : super(SettingRoute.name, initialChildren: children);

  static const String name = 'SettingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SettingPage());
    },
  );
}

/// generated route for
/// [SumarySalaryPage]
class SumarySalaryRoute extends PageRouteInfo<void> {
  const SumarySalaryRoute({List<PageRouteInfo>? children})
    : super(SumarySalaryRoute.name, initialChildren: children);

  static const String name = 'SumarySalaryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SumarySalaryPage());
    },
  );
}

/// generated route for
/// [UserDetailAdminPage]
class UserDetailAdminRoute extends PageRouteInfo<UserDetailAdminRouteArgs> {
  UserDetailAdminRoute({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
         UserDetailAdminRoute.name,
         args: UserDetailAdminRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'UserDetailAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<UserDetailAdminRouteArgs>(
        orElse: () => UserDetailAdminRouteArgs(id: pathParams.getInt('id')),
      );
      return WrappedRoute(
        child: UserDetailAdminPage(key: args.key, id: args.id),
      );
    },
  );
}

class UserDetailAdminRouteArgs {
  const UserDetailAdminRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'UserDetailAdminRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserDetailAdminRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [WorkTimeRecordPage]
class WorkTimeRecordRoute extends PageRouteInfo<void> {
  const WorkTimeRecordRoute({List<PageRouteInfo>? children})
    : super(WorkTimeRecordRoute.name, initialChildren: children);

  static const String name = 'WorkTimeRecordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const WorkTimeRecordPage());
    },
  );
}
