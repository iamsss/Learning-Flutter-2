import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy List Reload'),
      ),
      body: ProductManager(),
    );
  }
}
