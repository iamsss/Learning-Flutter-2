import 'package:first_app/pages/auth.dart';
import 'package:first_app/pages/products.dart';
import 'package:first_app/pages/products_admin.dart';
import 'package:flutter/material.dart';
import './product_manager.dart';

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      //home: AuthPage(),
      routes: {
        '/':(BuildContext context) => ProductsPage(),
        '/admin': (BuildContext context) => ManageProductPage(),
      },
    );
  }
}
