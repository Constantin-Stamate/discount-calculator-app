import 'package:flutter_test/flutter_test.dart';
import 'package:discount_calculator_app/app.dart';

void main() {
  testWidgets('discount calculator displays correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Calculator de Reducere'), findsOneWidget);
    expect(find.text('Preț inițial (MDL)'), findsOneWidget);
    expect(find.text('Procent reducere (%)'), findsOneWidget);
    expect(find.text('Selectează reducere rapidă:'), findsOneWidget);
    expect(find.text('Calculează'), findsOneWidget);
  });
}