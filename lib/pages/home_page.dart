import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
          itemCount: dummyList.length),
      drawer: const MyDrawer(),
    );
  }
}
