import 'package:first_app/pages/product_create.dart';
import 'package:first_app/pages/product_list.dart';
import 'package:first_app/pages/products.dart';
import 'package:flutter/material.dart';

class ManageProductPage extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 2,
      child: Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false, // To Hide Menu Icon
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Products Page'),
              onTap: () => Navigator.pushReplacementNamed(context, '/'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Manage Products'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text:'Create Products'),
            Tab(
              icon: Icon(Icons.list),
              text:'My Products')
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ProductCreatePage(),
          ProductListPage(),
        ],
      ),

    ),
    );
  }
}