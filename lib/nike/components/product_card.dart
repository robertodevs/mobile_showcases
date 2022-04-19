import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productTitle,
    required this.price,
    required this.category,
    required this.numberOfColors,
    required this.productImage,
  }) : super(key: key);

  final String productTitle;
  final String price;
  final String category;
  final String numberOfColors;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Image.asset(
                productImage,
                fit: BoxFit.contain,
              ),
              const Positioned(
                right: 16,
                top: 8,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border_rounded,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productTitle,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(category),
                Text(numberOfColors),
                Text(price)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
