import 'package:basic_flutter/models/catalog.dart';
import 'package:basic_flutter/widgets/drawer.dart';
import 'package:basic_flutter/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int days = 30;
  final String name = "flutter";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lagbe"),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
    );
  }
}
