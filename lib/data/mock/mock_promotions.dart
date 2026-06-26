import '../models/promotion_model.dart';

const List<PromotionModel> mockPromotions = [
  PromotionModel(
    id: 'promo-cuchareables-dia',
    title: 'Promoci\u00F3n del d\u00EDa',
    subtitle: 'Cuchareables desde S/ 7.00',
    productIds: ['tres-leches', 'cheesecake-maracuya'],
    badgeText: 'Desde S/ 7.00',
  ),
  PromotionModel(
    id: 'promo-tortas-premium',
    title: 'Tortas para celebrar',
    subtitle: 'Sabores especiales con descuento por temporada.',
    productIds: ['torta-chocolate-fudge-casero', 'torta-chocoteja-pecanas'],
    badgeText: 'Oferta dulce',
  ),
];
