import 'package:flutter/material.dart';
import 'package:hr_app/src/core/config/config.dart';
import 'package:hr_app/src/core/router/router.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: _appRouter.config());
  }
}
