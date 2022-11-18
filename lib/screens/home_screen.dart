import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int days = 30;
  final String name = "flutter";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lagbe"),
      ),
      // drawer: const Drawer(),
      body: Center(
        child: Text("Welcome to $days days of $name"),
      ),
    );
  }
}
