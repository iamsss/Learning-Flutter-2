import './product_control.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget { 
  final String startingProduct;
  ProductManager(
      {this.startingProduct =
          ""}); // Now Product MAnager has default value

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
    if(widget.startingProduct != ""){
    _products.add(widget.startingProduct);
    }
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
        Expanded( child: Products(_products)) // Take all remaining space and scroll
      ],
    );
  }
}