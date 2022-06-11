import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/products.dart';
import 'package:flutter_application_2/widgets/product_item.dart';

class CategoryProductsScreen extends StatefulWidget {
  static const screenRoute = '/category-products';

  final List<Product> availableProducts;

  CategoryProductsScreen(this.availableProducts);

  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  late String? categoryTitle;
  late List<Product> displayProducts;

// we put the code inside of the didChangeDependencies bcs the context when its getting executed at the first the context has no value
// we didnt put the code inside of iniState bcs this function gets executed first and the context at the first has no value
  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title'];
    displayProducts = widget.availableProducts.where((product) {
      return product.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  // void _removeProduct(String productId) {
  //   setState(() {
  //     displayProducts.removeWhere((product) => product.id == productId);
  //   });
  // }

  // final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ProductItem(
            id: displayProducts[index].id,
            title: displayProducts[index].title,
            imageUrl: displayProducts[index].imageUrl,
            duration: displayProducts[index].duration,
            producttype: displayProducts[index].producttype,
            type: displayProducts[index].type,
            // removeItem: _removeProduct,
          );
        },
        itemCount: displayProducts.length,
      ),
    );
  }
}
