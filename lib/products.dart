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

    Widget _buildProductLists(){
       Widget productCard;
        if(products.length > 0){
          productCard = ListView.builder ( 
          itemBuilder: _buildProductItem,
          itemCount: products.length,
          );
        } else {
          productCard =  Container(); // Empty Container Widget like null
        }
        return productCard;
      
    }

    @override
      Widget build(BuildContext context) {
        return _buildProductLists();
       }
}