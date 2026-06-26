class PromotionModel {
  const PromotionModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.productIds,
    required this.badgeText,
    this.isActive = true,
  });

  final String id;
  final String title;
  final String subtitle;
  final List<String> productIds;
  final String badgeText;
  final bool isActive;

  PromotionModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    List<String>? productIds,
    String? badgeText,
    bool? isActive,
  }) {
    return PromotionModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      productIds: productIds ?? this.productIds,
      badgeText: badgeText ?? this.badgeText,
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
      'isActive': isActive,
    };
  }
}
