import '../../shared/utils/formatters.dart';
import '../models/models.dart';

class WhatsAppOrderData {
  const WhatsAppOrderData({
    required this.customerName,
    required this.customerPhone,
    required this.deliveryZone,
    required this.reference,
    required this.observations,
    required this.items,
    required this.total,
  });

  final String customerName;
  final String customerPhone;
  final String deliveryZone;
  final String reference;
  final String observations;
  final List<CartItem> items;
  final double total;
}

class WhatsAppService {
  const WhatsAppService._();

  static String buildOrderMessage(WhatsAppOrderData order) {
    final buffer = StringBuffer()
      ..writeln('Hola Kalu, quiero hacer un pedido:')
      ..writeln()
      ..writeln('Cliente:')
      ..writeln('Nombre: ${order.customerName}')
      ..writeln('Telefono: ${order.customerPhone}')
      ..writeln('Direccion/Zona: ${_optional(order.deliveryZone)}')
      ..writeln('Referencia: ${_optional(order.reference)}')
      ..writeln()
      ..writeln('Pedido:');

    for (final item in order.items) {
      buffer.writeln(
        '- ${item.quantity} x ${item.product.name} - '
        '${AppFormatters.price(item.subtotal)}',
      );
    }

    buffer
      ..writeln()
      ..writeln('Total: ${AppFormatters.price(order.total)}')
      ..writeln()
      ..writeln('Observaciones:')
      ..write(_optional(order.observations));

    return buffer.toString();
  }

  static Uri buildWhatsAppUri(String message) {
    return Uri.parse('https://wa.me/?text=${Uri.encodeComponent(message)}');
  }

  static String _optional(String value) {
    final trimmed = value.trim();
    return trimmed.isEmpty ? '-' : trimmed;
  }
}
