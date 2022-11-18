import 'package:flutter/material.dart';

import '../utils/routes.dart';

class HomeScreen extends StatelessWidget {
  final int days = 30;
  final String name = "dart";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lagbe"),
      ),
      drawer: const Drawer(),
      body: Center(
        child: Column(children: [
          ElevatedButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(150, 40),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                MyRoutes.loginRoute,
              );
            },
            child: const Text("login"),
          )
        ]),
      ),
    );
  }
}
