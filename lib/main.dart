import 'package:basic_flutter/screens/home_screen.dart';
import 'package:basic_flutter/screens/login_screen.dart';
import 'package:basic_flutter/utils/routes.dart';
import 'package:basic_flutter/widgets/themes.dart';
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
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginScreen(),
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginScreen(),
      },
    );
  }
}
