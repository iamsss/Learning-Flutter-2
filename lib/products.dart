import 'package:flutter/material.dart';

class Products extends StatelessWidget {
    final List<String> products;

    Products([this.products = const []]);

    Widget _buildProductItem(BuildContext context,int index) { // Build product as required
        return Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpeg'),
                              Text(products[index])
                            ],
                          ),
                        
        );
    }

    @override
      Widget build(BuildContext context) {
        return products.length > 0 ? ListView.builder( 
          itemBuilder: _buildProductItem,
          itemCount: products.length,
          ): Center(child: Text('No Products Found'),);
      }
}