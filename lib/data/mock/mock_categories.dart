import '../models/category_model.dart';

const List<CategoryModel> mockCategories = [
  CategoryModel(
    id: 'cuchareables',
    name: 'Cuchareables',
    description: 'Postres personales cremosos y listos para disfrutar.',
    iconName: 'dessert',
    isFeatured: true,
  ),
  CategoryModel(
    id: 'tortas-cuarto-kg',
    name: 'Tortas 1/4 kg',
    description: 'Tortas peque\u00F1as para antojos y regalos especiales.',
    iconName: 'cake',
    isFeatured: true,
  ),
  CategoryModel(
    id: 'tortas-un-kg',
    name: 'Tortas 1 kg',
    description: 'Tortas familiares para celebraciones y reuniones.',
    iconName: 'cake',
    isFeatured: true,
  ),
  CategoryModel(
    id: 'pies',
    name: 'Pies',
    description: 'Pies dulces con rellenos frescos y base artesanal.',
    iconName: 'bakery',
  ),
  CategoryModel(
    id: 'bocaditos',
    name: 'Bocaditos',
    description: 'Dulces peque\u00F1os para compartir en mesas especiales.',
    iconName: 'cookie',
  ),
  CategoryModel(
    id: 'promociones',
    name: 'Promociones',
    description: 'Ofertas y packs destacados por temporada.',
    iconName: 'local_offer',
    isFeatured: true,
  ),
];
