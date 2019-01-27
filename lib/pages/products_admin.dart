import 'package:first_app/pages/products.dart';
import 'package:flutter/material.dart';

class ManageProductPage extends StatelessWidget {
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
              title: Text('Products Page'),
              onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage())),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Manage Products'),
      ),
      body: ,
    );
  }
}