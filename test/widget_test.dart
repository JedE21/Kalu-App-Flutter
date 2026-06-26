import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kalu_app/main.dart';

void main() {
  testWidgets('Bottom navigation changes visible section', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const KaluApp());

    expect(
      find.text('Hola, \u00BFqu\u00E9 postre se te antoja hoy?'),
      findsOneWidget,
    );
    expect(find.text('Buscar tortas, cuchareables, pies...'), findsOneWidget);
    expect(find.text('Promoci\u00F3n del d\u00EDa'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.category_outlined));
    await tester.pumpAndSettle();

    expect(
      find.text('Aqu\u00ED se mostrar\u00E1n las categor\u00EDas de postres.'),
      findsOneWidget,
    );

    await tester.tap(find.text('Carrito'));
    await tester.pumpAndSettle();

    expect(
      find.text('El carrito real se implementar\u00E1 m\u00E1s adelante.'),
      findsOneWidget,
    );

    await tester.tap(find.text('Pedidos'));
    await tester.pumpAndSettle();

    expect(
      find.text('Aqu\u00ED aparecer\u00E1 el seguimiento de pedidos.'),
      findsOneWidget,
    );

    await tester.tap(find.text('Perfil'));
    await tester.pumpAndSettle();

    expect(
      find.text('La informaci\u00F3n del cliente se agregar\u00E1 luego.'),
      findsOneWidget,
    );
  });
}
