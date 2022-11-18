import 'package:basic_flutter/screens/home_screen.dart';
import 'package:basic_flutter/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginScreen(),
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}
