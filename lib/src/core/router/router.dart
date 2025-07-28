import 'package:auto_route/auto_route.dart';
import 'package:hr_app/src/module/auth/pages/auth.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: AuthRoute.page, initial: true)];
}
