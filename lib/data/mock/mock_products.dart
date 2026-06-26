import '../models/product_model.dart';

const List<ProductModel> mockProducts = [
  ProductModel(
    id: 'torta-chocolate-fudge-casero',
    name: 'Torta de Chocolate con Fudge Casero',
    description: 'Bizcocho h\u00FAmedo de chocolate con fudge artesanal.',
    categoryId: 'tortas-un-kg',
    categoryName: 'Tortas 1 kg',
    price: 48,
    oldPrice: 55,
    imagePlaceholder: 'cake',
    isBestSeller: true,
    isPromotion: true,
  ),
  ProductModel(
    id: 'cheesecake-maracuya',
    name: 'Cheesecake de Maracuy\u00E1',
    description: 'Cheesecake cremoso con salsa de maracuy\u00E1 natural.',
    categoryId: 'cuchareables',
    categoryName: 'Cuchareables',
    price: 9,
    imagePlaceholder: 'dessert',
    isBestSeller: true,
  ),
  ProductModel(
    id: 'tres-leches',
    name: 'Tres Leches',
    description: 'Cl\u00E1sico tres leches suave, dulce y fresco.',
    categoryId: 'cuchareables',
    categoryName: 'Cuchareables',
    price: 8,
    oldPrice: 10,
    imagePlaceholder: 'dessert',
    isBestSeller: true,
    isPromotion: true,
  ),
  ProductModel(
    id: 'torta-sublime-mani',
    name: 'Torta Sublime con Man\u00ED',
    description: 'Torta de chocolate con crema, man\u00ED y sabor a Sublime.',
    categoryId: 'tortas-cuarto-kg',
    categoryName: 'Tortas 1/4 kg',
    price: 32,
    imagePlaceholder: 'cake',
    isBestSeller: true,
  ),
  ProductModel(
    id: 'pie-limon',
    name: 'Pie de Lim\u00F3n',
    description: 'Base crocante, relleno de lim\u00F3n y merengue dorado.',
    categoryId: 'pies',
    categoryName: 'Pies',
    price: 35,
    imagePlaceholder: 'bakery',
  ),
  ProductModel(
    id: 'torta-pistacho',
    name: 'Torta de Pistacho',
    description: 'Torta premium con crema suave y notas de pistacho.',
    categoryId: 'tortas-un-kg',
    categoryName: 'Tortas 1 kg',
    price: 58,
    imagePlaceholder: 'cake',
  ),
  ProductModel(
    id: 'carrot-cake',
    name: 'Carrot Cake',
    description: 'Torta especiada de zanahoria con frosting cremoso.',
    categoryId: 'tortas-cuarto-kg',
    categoryName: 'Tortas 1/4 kg',
    price: 34,
    imagePlaceholder: 'cake',
  ),
  ProductModel(
    id: 'torta-chocoteja-pecanas',
    name: 'Torta de Chocoteja con Pecanas',
    description: 'Torta con chocolate, pecanas y relleno estilo chocoteja.',
    categoryId: 'tortas-un-kg',
    categoryName: 'Tortas 1 kg',
    price: 62,
    oldPrice: 68,
    imagePlaceholder: 'cake',
    isPromotion: true,
  ),
];

List<ProductModel> mockBestSellerProducts = mockProducts
    .where((product) => product.isBestSeller)
    .toList(growable: false);

List<ProductModel> mockPromotionProducts = mockProducts
    .where((product) => product.isPromotion)
    .toList(growable: false);
