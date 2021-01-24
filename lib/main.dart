import 'package:flutter/material.dart ';
import 'package:expensetracker/locator.dart';
import 'package:expensetracker/ui/shared/app_colors.dart';
import 'package:expensetracker/auth.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MaterialApp(
      home: MyApp(),
      title: 'Expense Tracker',
      themeMode: ThemeMode.system,
      theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: backgroundColor,
    ),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: backgroundColor,
    ),
      debugShowCheckedModeBanner: false,

      

    ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Auth();
  }
}

