import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kalu_app/main.dart';

void main() {
  testWidgets('Bottom navigation changes visible section', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const KaluApp());

    expect(find.text('Kal\u00FA'), findsOneWidget);
    expect(find.text('Pasteler\u00EDa Casera'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 1900));
    await tester.pumpAndSettle();

    expect(find.text('Postres caseros en un solo lugar'), findsOneWidget);
    expect(find.text('Omitir'), findsOneWidget);

    await tester.tap(find.text('Omitir'));
    await tester.pumpAndSettle();

    expect(
      find.text('Hola, \u00BFqu\u00E9 postre se te antoja hoy?'),
      findsOneWidget,
    );
    expect(find.text('Buscar tortas, cuchareables, pies...'), findsOneWidget);
    expect(find.text('Promoci\u00F3n del d\u00EDa'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.category_outlined));
    await tester.pumpAndSettle();

    expect(
      find.text('Elige una categor\u00EDa para ver los postres disponibles.'),
      findsOneWidget,
    );
    expect(find.text('Cuchareables'), findsOneWidget);

    await tester.tap(find.text('Cuchareables'));
    await tester.pumpAndSettle();

    expect(find.text('Cheesecake de Maracuy\u00E1'), findsOneWidget);
    expect(find.text('Tres Leches'), findsOneWidget);
    expect(find.text('Torta de Chocolate con Fudge Casero'), findsNothing);

    await tester.tap(find.text('Tres Leches'));
    await tester.pumpAndSettle();

    expect(find.text('Detalle'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Cl\u00E1sico tres leches suave, dulce y fresco.'),
      120,
    );
    expect(
      find.text('Cl\u00E1sico tres leches suave, dulce y fresco.'),
      findsOneWidget,
    );
    expect(find.text('Disponible'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Agregar al carrito'), 160);
    expect(find.text('Agregar al carrito'), findsOneWidget);
    expect(find.text('Pedir por WhatsApp'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add).last);
    await tester.pumpAndSettle();

    expect(find.text('2'), findsOneWidget);

    await tester.tap(find.text('Agregar al carrito'));
    await tester.pumpAndSettle();

    expect(find.text('Tres Leches agregado al carrito'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Carrito'));
    await tester.pumpAndSettle();

    expect(find.text('2 producto(s) en tu pedido'), findsOneWidget);
    expect(find.text('Tres Leches'), findsOneWidget);
    expect(find.text('Continuar pedido'), findsOneWidget);
    expect(find.text('S/ 16.00'), findsWidgets);

    await tester.tap(find.byIcon(Icons.add).last);
    await tester.pumpAndSettle();

    expect(find.text('3 producto(s) en tu pedido'), findsOneWidget);
    expect(find.text('S/ 24.00'), findsWidgets);

    await tester.tap(find.byIcon(Icons.remove).last);
    await tester.pumpAndSettle();

    expect(find.text('2 producto(s) en tu pedido'), findsOneWidget);

    await tester.tap(find.text('Vaciar'));
    await tester.pumpAndSettle();

    expect(find.text('Tu carrito est\u00E1 vac\u00EDo'), findsOneWidget);

    await tester.tap(find.text('Pedidos'));
    await tester.pumpAndSettle();

    expect(
      find.text('Aqu\u00ED aparecer\u00E1 el seguimiento de pedidos.'),
      findsOneWidget,
    );

    await tester.tap(find.text('Perfil'));
    await tester.pumpAndSettle();

    expect(find.text('Hola, bienvenido a Kal\u00FA'), findsOneWidget);
  });
}
