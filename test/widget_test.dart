import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecoflow/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tunggu sampai semua widget ter-render
    await tester.pumpAndSettle(); 

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);  // Memastikan bahwa "0" ditemukan
    expect(find.text('1'), findsNothing);   // Memastikan bahwa "1" tidak ditemukan

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));  // Menekan tombol '+' untuk menambah counter
    await tester.pump();  // Memperbarui UI setelah interaksi

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);  // Memastikan bahwa "0" sudah tidak ada
    expect(find.text('1'), findsOneWidget); // Memastikan bahwa "1" ada
  });
}
