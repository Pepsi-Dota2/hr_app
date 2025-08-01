import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:hr_app/src/core/service/token_storage.dart';

@RoutePage()
class RedirectPage extends StatelessWidget {
  const RedirectPage({super.key}); // 👈 add constructor

  @override
  Widget build(BuildContext context) {
    Future.microtask(() async {
      final token = await TokenStorage.getAccessToken();
      final role = await UserRole.getRole();

      if (token != null) {
        if (role == '2') {
          context.router.replace(const DashboardAdminRoute());
        } else {
          context.router.replace(const DashboardRoute());
        }
      } else {
        context.router.replace(const AuthRoute());
      }
    });

    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
