import 'package:dukanapp/screens/screen_products.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {
  const CatalogueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Catalogue'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          bottom: const TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              text: 'Products',
            ),
            Tab(
              text: 'Categories',
            )
          ]),
        ),
        body: const TabBarView(children: [
          ProductsScreen(),
          Center(
              child: Text(
            'Empty',
            style: TextStyle(fontSize: 20),
          )),
        ]),
      ),
    );
  }
}
