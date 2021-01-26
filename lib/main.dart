import 'package:flutter/material.dart ' hide Router;
import 'package:expensetracker/locator.dart';
import 'package:expensetracker/ui/router.dart';
import 'package:expensetracker/ui/shared/app_colors.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: backgroundColor,
    ),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: backgroundColor,
    ),
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
    );
  }
}