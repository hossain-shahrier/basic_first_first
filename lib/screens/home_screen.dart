import 'package:basic_flutter/widgets/drawer.dart';
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
      drawer: const MyDrawer(),
      body: Center(
        child: Text("Welcome to $days days of $name"),
      ),
    );
  }
}
