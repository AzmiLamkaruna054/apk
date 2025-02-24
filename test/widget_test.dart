import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ecoflow/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());
    
    // Tunggu sampai semua widget selesai di-render.
    await tester.pumpAndSettle(); 

    // Verifikasi bahwa counter mulai dengan angka 0.
    expect(find.text('0'), findsOneWidget);  // Pastikan ada widget dengan teks "0"
    expect(find.text('1'), findsNothing);   // Pastikan belum ada widget dengan teks "1"

    // Tap ikon '+' dan trigger frame untuk memperbarui UI.
    await tester.tap(find.byIcon(Icons.add)); 
    await tester.pump();  // Perbarui UI setelah interaksi
    
    // Tunggu sampai semua widget selesai di-render setelah update.
    await tester.pumpAndSettle(); 

    // Verifikasi bahwa counter telah bertambah.
    expect(find.text('0'), findsNothing);  // Pastikan "0" sudah tidak ada
    expect(find.text('1'), findsOneWidget); // Pastikan "1" sekarang ada
  });
}
