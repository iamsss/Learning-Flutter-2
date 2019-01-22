import './product_control.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget { 
  final String startingProduct;
  ProductManager(
      {this.startingProduct =
          'Sweets Tester'}); // Now Product MAnager has default value

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProducts),
        ),
        Container( height: 300.0,child: Products(_products)) // Scrorlling ListView Inside Controller
      ],
    );
  }
}