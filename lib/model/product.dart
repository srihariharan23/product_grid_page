/*
* Project      : product_grid_page
* File         : product.dart
* Description  : 
* Author       : SrihariharanT
* Date         : 2025-05-29
* Version      : 1.0
* Ticket       : 
*/

class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});

  factory Product.fromJson(Map<String, dynamic> json) =>
      Product(
        name: json["name"],
        imageUrl: json["imageUrl"],
        price: json["price"],
      );
}