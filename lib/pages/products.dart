import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products,this.addProduct,this.deleteProduct);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false, // To Hide Menu Icon
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () => Navigator.pushReplacementNamed(context, '/admin'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Products Page'),
      ),
      body: ProductManager(products,addProduct,deleteProduct),
    );
  }
}
