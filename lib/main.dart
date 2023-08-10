import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routers.dart';
import 'package:fl_components/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRouters.initialRoute,
      routes: AppRouters.getAppRoutes(),
      onGenerateRoute:  AppRouters.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}