/*
* Project      : product_grid_page
* File         : cardScreen.dart
* Description  : 
* Author       : SrihariharanT
* Date         : 2025-05-29
* Version      : 1.0
* Ticket       : 
*/

import 'package:flutter/material.dart';
import '../model/product.dart';
import 'detailsScreen.dart';

class ProductCard extends StatelessWidget{
  final Product product;
  const ProductCard(this.product, {super.key});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetailPage(product : product)));

        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: ClipRect(
                child: Image.network(product.imageUrl,
                  fit: BoxFit.cover,
                ),
              )),
              Padding(padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name),
                    Text(product.price.toString())
                  ],
                ),)

            ],
          ),
        ));
  }
}