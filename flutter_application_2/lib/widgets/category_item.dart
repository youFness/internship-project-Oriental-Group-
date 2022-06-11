// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/categorie_products_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  CategoryItem(this.title, this.imageUrl, this.id);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryProductsScreen.screenRoute,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // stack so we can do layering
    return InkWell(
      onTap: (() => selectCategory(context)),
      splashColor: Colors.black,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          // we wrapped it arround the  ClipRRect widget so we can border radius the pictures
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageUrl,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            // so it gives kinda of black on the picture

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
