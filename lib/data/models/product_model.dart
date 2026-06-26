class ProductModel {
  const ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.categoryId,
    required this.categoryName,
    required this.price,
    required this.imagePlaceholder,
    this.oldPrice,
    this.isBestSeller = false,
    this.isPromotion = false,
    this.isAvailable = true,
  });

  final String id;
  final String name;
  final String description;
  final String categoryId;
  final String categoryName;
  final double price;
  final double? oldPrice;
  final String imagePlaceholder;
  final bool isBestSeller;
  final bool isPromotion;
  final bool isAvailable;

  ProductModel copyWith({
    String? id,
    String? name,
    String? description,
    String? categoryId,
    String? categoryName,
    double? price,
    double? oldPrice,
    String? imagePlaceholder,
    bool? isBestSeller,
    bool? isPromotion,
    bool? isAvailable,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      price: price ?? this.price,
      oldPrice: oldPrice ?? this.oldPrice,
      imagePlaceholder: imagePlaceholder ?? this.imagePlaceholder,
      isBestSeller: isBestSeller ?? this.isBestSeller,
      isPromotion: isPromotion ?? this.isPromotion,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      categoryId: map['categoryId'] as String,
      categoryName: map['categoryName'] as String,
      price: (map['price'] as num).toDouble(),
      oldPrice: (map['oldPrice'] as num?)?.toDouble(),
      imagePlaceholder: map['imagePlaceholder'] as String,
      isBestSeller: map['isBestSeller'] as bool? ?? false,
      isPromotion: map['isPromotion'] as bool? ?? false,
      isAvailable: map['isAvailable'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'categoryId': categoryId,
      'categoryName': categoryName,
      'price': price,
      'oldPrice': oldPrice,
      'imagePlaceholder': imagePlaceholder,
      'isBestSeller': isBestSeller,
      'isPromotion': isPromotion,
      'isAvailable': isAvailable,
    };
  }
}
