// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/products.dart';
import 'package:flutter_application_2/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final ProductType producttype;
  final Type type;
  // final Function removeItem;

  const ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.producttype,
    required this.type,
    // required this.removeItem,
  });

  String get seasonText {
    switch (type) {
      case Type.Comestible:
        return 'Comestible';
        break;
      case Type.Cosmetique:
        return 'Cosmetique';
        break;

      default:
        return 'unconnu';
    }
  }

  String get ProductTtypeText {
    switch (producttype) {
      case ProductType.argile:
        return 'Argile';
        break;
      case ProductType.huile:
        return 'Huile';
        break;
      case ProductType.savon:
        return 'Savon';
        break;

      default:
        return 'unconnu';
    }
  }

  void selectTrip(BuildContext context) {
    Navigator.of(context)
        // the then became active when we tap on the button delete in the product_dettails_screen.dart
        .pushNamed(ProductDetailScreen.screenRoute, arguments: id)
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 250,
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.8),
                      ],
                      // so it starts from the 60% of the photo
                      stops: [0.6, 1],
                    ),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Color.fromARGB(255, 162, 226, 164),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.price_change,
                        color: Color.fromARGB(255, 182, 233, 13),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration DH'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.biotech_outlined,
                        color: Color.fromARGB(255, 182, 233, 13),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.production_quantity_limits,
                        color: Color.fromARGB(255, 182, 233, 13),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(ProductTtypeText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
