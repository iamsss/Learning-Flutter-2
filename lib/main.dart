import 'package:first_app/pages/auth.dart';
import 'package:first_app/pages/product.dart';
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

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }


  
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index){
    setState(() {
     _products.removeAt(index); 
    });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      //home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(_products,_addProduct,_deleteProduct),
        '/admin': (BuildContext context) =>
            ManageProductPage(), // for simple routes
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/'); // route should be like /product/3
        if(pathElements[0] != ''){
          return null;
        }
        if(pathElements[1] == 'product'){ //
        final int index = int.parse(pathElements[2]);
           return MaterialPageRoute<bool>(
            builder: (BuildContext context) => ProductPage(
                _products[index]['title'], _products[index]['image']));

        }
      return null;
      },
    );
  }
}