// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/categorie_products_screen.dart';
import 'package:flutter_application_2/screens/product_detail_screen.dart';
import 'package:flutter_application_2/widgets/app_data.dart';

import 'models/products.dart';
import 'screens/filters_screen.dart';
import 'screens/splash_view.dart';
import 'widgets/tap_bar.dart';

void main() {
  runApp(MyApp());
}

// We changed to statfulwidget cus the app gonna get re built
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'cosmetible': false,
    'cosmetique': false,
    // 'family': false,
  };

  List<Product> _availableProducts = Products_data;
  List<Product> _favoriteProducts = [];

  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      // to check all the buttoms in the filter page
      _availableProducts = Products_data.where((product) {
        if (_filters['cosmetible'] == true && product.isCosmetible != true) {
          return false;
        }
        if (_filters['cosmetique'] == true && product.isCosmetique != true) {
          return false;
        }
        // if (_filters['family'] == true && product.isForFamily != true) {
        //   return false;
        // }
        return true;
      }).toList();
    });
  }

// this methode helps to delete or add products
  void _manageFavorite(String productId) {
    // indexwhere returns 1 if it exists and -1 if it doesnt
    final existingIndex =
        _favoriteProducts.indexWhere((product) => product.id == productId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteProducts.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteProducts.add(
            Products_data.firstWhere((product) => product.id == productId));
      });
    }
  }

// to check if every product has an id
  bool _isFavorite(String id) {
    return _favoriteProducts.any((product) => product.id == id);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my app',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashView(),
        // we transfer _favoriteProducts from the main to tab_bar page then to favorite_screem
        '/': (context) => TabsScreen(_favoriteProducts),
        CategoryProductsScreen.screenRoute: (ctx) =>
            CategoryProductsScreen(_availableProducts),
        ProductDetailScreen.screenRoute: (ctx) =>
            ProductDetailScreen(_manageFavorite, _isFavorite),
        FiltersScreen.screenRoute: (ctx) =>
            FiltersScreen(_filters, _changeFilters),
      },
    );
  }
}
