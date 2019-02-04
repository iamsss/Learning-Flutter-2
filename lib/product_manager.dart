import './product_control.dart';
import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatelessWidget { 

final List<Map<String, String>> products;
final Function addProducts;
final Function deleteProducts;
ProductManager(this.products,this.addProducts,this.deleteProducts);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProducts),
        ),
        Expanded( child: Products(products, deleteProduct: deleteProducts)) // Take all remaining space and scroll
      ],
    );
  }

}
