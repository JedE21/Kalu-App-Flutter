import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../data/models/models.dart';
import '../../../data/services/services.dart';
import '../../../shared/shared.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _deliveryZoneController = TextEditingController();
  final _referenceController = TextEditingController();
  final _observationsController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _deliveryZoneController.dispose();
    _referenceController.dispose();
    _observationsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = CartController.instance;

    return AppScaffold(
      title: 'Checkout',
      body: AnimatedBuilder(
        animation: cart,
        builder: (context, _) {
          if (cart.isEmpty) {
            return AppEmpty(
              title: 'No hay productos',
              message: 'Agrega productos al carrito para continuar tu pedido.',
              icon: AppIcons.cart,
              actionText: 'Volver',
              onActionTap: () => Navigator.of(context).pop(),
            );
          }

          return Form(
            key: _formKey,
            child: ListView(
              children: [
                const AppBanner(
                  title: 'Finaliza tu pedido',
                  subtitle:
                      'Revisa el resumen y completa tus datos para preparar el mensaje de WhatsApp.',
                  icon: Icons.chat_outlined,
                ),
                const SizedBox(height: AppSpacing.xl),
                const SectionTitle(title: 'Resumen del pedido'),
                const SizedBox(height: AppSpacing.md),
                _OrderSummary(items: cart.items, total: cart.total),
                const SizedBox(height: AppSpacing.xl),
                const SectionTitle(title: 'Datos del cliente'),
                const SizedBox(height: AppSpacing.md),
                _CustomerForm(
                  nameController: _nameController,
                  phoneController: _phoneController,
                  deliveryZoneController: _deliveryZoneController,
                  referenceController: _referenceController,
                  observationsController: _observationsController,
                ),
                const SizedBox(height: AppSpacing.xl),
                AppButton(
                  label: 'Enviar pedido por WhatsApp',
                  icon: Icons.chat_outlined,
                  expand: true,
                  onPressed: () => _submitOrder(cart),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _submitOrder(CartController cart) {
    if (!_formKey.currentState!.validate()) return;

    final message = WhatsAppService.buildOrderMessage(
      WhatsAppOrderData(
        customerName: _nameController.text.trim(),
        customerPhone: _phoneController.text.trim(),
        deliveryZone: _deliveryZoneController.text.trim(),
        reference: _referenceController.text.trim(),
        observations: _observationsController.text.trim(),
        items: cart.items,
        total: cart.total,
      ),
    );
    final uri = WhatsAppService.buildWhatsAppUri(message);

    _showPreparedMessage(message: message, uri: uri);
  }

  Future<void> _showPreparedMessage({
    required String message,
    required Uri uri,
  }) {
    return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pedido preparado'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'El mensaje y enlace de WhatsApp quedaron listos para la '
                  'integracion de apertura.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: AppSpacing.md),
                SelectableText(message),
                const SizedBox(height: AppSpacing.md),
                SelectableText(
                  uri.toString(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
            FilledButton.icon(
              onPressed: () async {
                final navigator = Navigator.of(context);
                final scaffoldMessenger = ScaffoldMessenger.of(this.context);
                await Clipboard.setData(
                  ClipboardData(text: '${message.trim()}\n\n${uri.toString()}'),
                );
                if (!mounted) return;
                navigator.pop();
                scaffoldMessenger.showSnackBar(
                  const SnackBar(content: Text('Pedido copiado')),
                );
              },
              icon: const Icon(Icons.copy_outlined),
              label: const Text('Copiar'),
            ),
          ],
        );
      },
    );
  }
}

class _OrderSummary extends StatelessWidget {
  const _OrderSummary({required this.items, required this.total});

  final List<CartItem> items;
  final double total;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          for (final item in items) ...[
            _OrderSummaryItem(item: item),
            if (item != items.last) const Divider(height: AppSpacing.xl),
          ],
          const Divider(height: AppSpacing.xl),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Total general',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              PriceWidget(price: total, textAlign: TextAlign.end),
            ],
          ),
        ],
      ),
    );
  }
}

class _OrderSummaryItem extends StatelessWidget {
  const _OrderSummaryItem({required this.item});

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 36,
          height: 36,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.softPink,
            borderRadius: BorderRadius.circular(AppRadius.sm),
          ),
          child: Text(
            '${item.quantity}x',
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: AppColors.primaryPink,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.product.name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                item.product.categoryName,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        PriceWidget(price: item.subtotal, textAlign: TextAlign.end),
      ],
    );
  }
}

class _CustomerForm extends StatelessWidget {
  const _CustomerForm({
    required this.nameController,
    required this.phoneController,
    required this.deliveryZoneController,
    required this.referenceController,
    required this.observationsController,
  });

  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController deliveryZoneController;
  final TextEditingController referenceController;
  final TextEditingController observationsController;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        children: [
          AppTextField(
            controller: nameController,
            label: 'Nombre',
            hintText: 'Tu nombre',
            prefixIcon: Icons.person_outline,
            textInputAction: TextInputAction.next,
            validator: _required('Ingresa tu nombre'),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: phoneController,
            label: 'Telefono',
            hintText: 'Numero para coordinar',
            prefixIcon: Icons.phone_outlined,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            validator: _required('Ingresa tu telefono'),
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: deliveryZoneController,
            label: 'Direccion o zona de entrega',
            hintText: 'Zona, distrito o direccion',
            prefixIcon: Icons.location_on_outlined,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: referenceController,
            label: 'Referencia',
            hintText: 'Ej. Cerca a la plaza',
            prefixIcon: Icons.pin_drop_outlined,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: AppSpacing.md),
          AppTextField(
            controller: observationsController,
            label: 'Observaciones',
            hintText: 'Dedicatoria, hora, detalles del pedido...',
            prefixIcon: Icons.notes_outlined,
            maxLines: 3,
            textInputAction: TextInputAction.done,
          ),
        ],
      ),
    );
  }

  FormFieldValidator<String> _required(String message) {
    return (value) {
      if (value == null || value.trim().isEmpty) return message;
      return null;
    };
  }
}
