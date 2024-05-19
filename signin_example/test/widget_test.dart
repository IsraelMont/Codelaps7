import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:signin_example/main.dart';

void main() {
  testWidgets('Sign up button test', (WidgetTester tester) async {
    await tester.pumpWidget(const SignUpScreen()); // Aquí usamos SignUpScreen en lugar de MyApp

    // Verificar que el botón de "Sign up" esté presente
    expect(find.text('Sign up'), findsOneWidget);

    // Verificar que al inicio el botón esté deshabilitado
    expect(tester.widget<TextButton>(find.byType(TextButton)).enabled, isFalse);

    // Simular el ingreso de texto en los campos de texto
    await tester.enterText(find.byType(TextField).at(0), 'John');
    await tester.enterText(find.byType(TextField).at(1), 'Doe');
    await tester.enterText(find.byType(TextField).at(2), 'johndoe');

    // Verificar que ahora el botón está habilitado
    expect(tester.widget<TextButton>(find.byType(TextButton)).enabled, isTrue);
  });
}

