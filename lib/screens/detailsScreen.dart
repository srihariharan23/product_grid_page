/*
* Project      : product_grid_page
* File         : detailsScreen.dart
* Description  : 
* Author       : SrihariharanT
* Date         : 2025-05-29
* Version      : 1.0
* Ticket       : 
*/

import 'package:flutter/material.dart';

import '../model/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(product.imageUrl),
                Text(product.name),
                Text(product.price.toString()),

              ])),);


  }}