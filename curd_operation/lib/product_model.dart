class Product {
  final String productName;
  final String category;
  final double price;

  const Product({
    required this.productName,
    required this.category,
    required this.price,
  });
}

final List<Product> products = [
  const Product(
      productName: 'Samsung galaxy s10', category: 'Mobile', price: 40000),
];
