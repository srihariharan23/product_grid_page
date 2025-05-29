import 'package:flutter/material.dart';
import 'package:product_grid_page/screens/gridScreen.dart';


void main() => runApp(ProductApp());


class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Product Grid",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductGridPage(),
    );
  }

}









