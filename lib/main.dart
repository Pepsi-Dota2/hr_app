import 'package:flutter/material.dart';
import 'package:hr_app/src/core/config/config.dart';
import 'package:hr_app/src/core/router/router.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  await configureDependencies();
  await initializeDateFormatting('lo', null);
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
