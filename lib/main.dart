import 'package:basic_flutter/screens/home_screen.dart';
import 'package:basic_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.orange),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginScreen(),
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}
