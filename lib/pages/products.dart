import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              onTap: (){},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Products Page'),
      ),
      body: ProductManager(),
    );
  }
}
