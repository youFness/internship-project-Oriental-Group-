import 'package:flutter/material.dart';

import '../models/products.dart';
import '../widgets/product_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Product> favoriteProduct;

  const FavoriteScreen(this.favoriteProduct);

  @override
  Widget build(BuildContext context) {
    if (favoriteProduct.isEmpty) {
      return Center(
        child: Text('Cette page est vide pour le moment'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return ProductItem(
            id: favoriteProduct[index].id,
            title: favoriteProduct[index].title,
            imageUrl: favoriteProduct[index].imageUrl,
            duration: favoriteProduct[index].duration,
            producttype: favoriteProduct[index].producttype,
            type: favoriteProduct[index].type,
            // removeItem: _removeProduct,
          );
        },
        itemCount: favoriteProduct.length,
      );
    }
  }
}
