class ProductModel {
  final int id;
  final String title;
  final String description;
  final double price;
  final String image;

  const ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'No title',
      description: json['description'] ?? 'No description',
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
      image: json['image'] ?? 'No image',
    );
  }
}