import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tugaskelompok7/main.dart';

void main() {
  testWidgets('Pokemon page displays the list and asset images', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('My Pokemon App'), findsOneWidget);
    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.text('Charmander'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(Image), findsAtLeastNWidgets(1));

    await tester.drag(find.byType(ListView), const Offset(0, -1000));
    await tester.pumpAndSettle();
    expect(find.text('Zubat'), findsOneWidget);
  });
}
