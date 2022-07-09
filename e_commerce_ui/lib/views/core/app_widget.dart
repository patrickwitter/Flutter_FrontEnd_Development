import 'package:e_commerce_ui/views/core/theme_data.dart';
import 'package:e_commerce_ui/views/routes/router.gr.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "E-Commerce Ui",
      theme: customThemeData,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
