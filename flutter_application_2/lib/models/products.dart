enum Type {
  Comestible,
  Cosmetique,
}

enum ProductType {
  huile,
  savon,
  argile,
}

class Product {
  final String id;
  final String Title1;
  final String Title2;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> description;
  final List<String> bienfaits;
  final List<String> emballage;
  final List<String> details;
  final int duration;
  final Type type;
  final ProductType producttype;
  final bool isCosmetible;
  final bool isCosmetique;
  // final bool isForFamily;

  const Product({
    required this.id,
    required this.Title1,
    required this.Title2,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.bienfaits,
    required this.emballage,
    required this.details,
    required this.duration,
    required this.type,
    required this.producttype,
    required this.isCosmetible,
    required this.isCosmetique,
    // required this.isForFamily,
  });
}
