class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.name,
    required this.description,
    required this.iconName,
    this.isFeatured = false,
  });

  final String id;
  final String name;
  final String description;
  final String iconName;
  final bool isFeatured;

  CategoryModel copyWith({
    String? id,
    String? name,
    String? description,
    String? iconName,
    bool? isFeatured,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      iconName: iconName ?? this.iconName,
      isFeatured: isFeatured ?? this.isFeatured,
    );
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      iconName: map['iconName'] as String,
      isFeatured: map['isFeatured'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'iconName': iconName,
      'isFeatured': isFeatured,
    };
  }
}
