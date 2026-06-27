class PromotionModel {
  const PromotionModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.productIds,
    required this.badgeText,
    required this.imagePlaceholder,
    this.price,
    this.oldPrice,
    this.isActive = true,
  });

  final String id;
  final String title;
  final String subtitle;
  final List<String> productIds;
  final String badgeText;
  final String imagePlaceholder;
  final double? price;
  final double? oldPrice;
  final bool isActive;

  PromotionModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    List<String>? productIds,
    String? badgeText,
    String? imagePlaceholder,
    double? price,
    double? oldPrice,
    bool? isActive,
  }) {
    return PromotionModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      productIds: productIds ?? this.productIds,
      badgeText: badgeText ?? this.badgeText,
      imagePlaceholder: imagePlaceholder ?? this.imagePlaceholder,
      price: price ?? this.price,
      oldPrice: oldPrice ?? this.oldPrice,
      isActive: isActive ?? this.isActive,
    );
  }

  factory PromotionModel.fromMap(Map<String, dynamic> map) {
    return PromotionModel(
      id: map['id'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      productIds: List<String>.from(map['productIds'] as List),
      badgeText: map['badgeText'] as String,
      imagePlaceholder: map['imagePlaceholder'] as String,
      price: (map['price'] as num?)?.toDouble(),
      oldPrice: (map['oldPrice'] as num?)?.toDouble(),
      isActive: map['isActive'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'productIds': productIds,
      'badgeText': badgeText,
      'imagePlaceholder': imagePlaceholder,
      'price': price,
      'oldPrice': oldPrice,
      'isActive': isActive,
    };
  }
}
