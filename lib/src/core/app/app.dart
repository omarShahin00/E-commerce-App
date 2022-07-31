import 'package:flutter/material.dart';

import '../../presentation/sources/routes/routes_manager.dart';
import '../../presentation/sources/themes/themes_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal(); // Named constructor

  static const MyApp _instance =
      MyApp._internal(); // singleton or single instance

  factory MyApp() => _instance; // factory constructor

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Posts App',
      theme: getApplicationTheme(),
      initialRoute: Routes.homePage,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
