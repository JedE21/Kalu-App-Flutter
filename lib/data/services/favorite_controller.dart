import 'package:flutter/foundation.dart';

import '../models/models.dart';

class FavoriteController extends ChangeNotifier {
  FavoriteController._();

  static final FavoriteController instance = FavoriteController._();

  final Map<String, ProductModel> _productsById = {};

  List<ProductModel> get products => List.unmodifiable(_productsById.values);

  bool get isEmpty => _productsById.isEmpty;

  bool isFavorite(String productId) {
    return _productsById.containsKey(productId);
  }

  void toggleProduct(ProductModel product) {
    if (isFavorite(product.id)) {
      _productsById.remove(product.id);
    } else {
      _productsById[product.id] = product;
    }

    notifyListeners();
  }

  void removeProduct(String productId) {
    if (_productsById.remove(productId) == null) return;
    notifyListeners();
  }
}
