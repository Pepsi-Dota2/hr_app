import 'package:auto_route/auto_route.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/service/token_storage.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await TokenStorage.getAccessToken();
    if (token != null) {
      resolver.next();
    } else {
      router.push(const AuthRoute());
    }
  }
}

class AdminGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await TokenStorage.getAccessToken();
    final role = await UserRole.getRole();

    if (token != null && role == '2') {
      resolver.next();
    } else {
      router.push(const AuthRoute());
    }
  }
}
