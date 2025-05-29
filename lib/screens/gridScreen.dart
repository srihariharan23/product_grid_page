/*
* Project      : product_grid_page
* File         : gridScreen.dart
* Description  : 
* Author       : SrihariharanT
* Date         : 2025-05-29
* Version      : 1.0
* Ticket       : 
*/

import 'package:flutter/material.dart';

import '../data/dummyData.dart';
import 'cardScreen.dart';

class ProductGridPage  extends StatelessWidget{
  const ProductGridPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: const Text("Product Grid")),
        body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.7,
        ),
            itemCount: dummyProducts.length,
            itemBuilder: (context,index){
              return ProductCard(dummyProducts[index]);
            }

        ));
  }}