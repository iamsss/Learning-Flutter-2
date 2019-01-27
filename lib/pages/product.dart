import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/food.jpeg'),
          Container(padding: EdgeInsets.all(10.0),child: Text('Details'),),
          RaisedButton(
            color: Theme.of(context).accentColor,
            child: Text('BACK'),
          onPressed: () => Navigator.pop(context),
          )
        ]
      ),
    );
  }
}