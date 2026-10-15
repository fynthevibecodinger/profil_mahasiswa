import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profil_mahasiswa/main.dart';

void main() {
  testWidgets('AboutScreen navigation and Stack layout test', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify profile screen elements are present
    expect(find.text('Alfian Chandra'), findsOneWidget);

    // Latihan 3: foto/info memakai Expanded, tombol aksi memakai Flexible(flex: 1)
    expect(find.byType(Expanded), findsWidgets);
    expect(
      find.byWidgetPredicate(
        (widget) => widget is Flexible && widget.flex == 1,
      ),
      findsWidgets,
    );

    // Tap the info icon in AppBar to go to AboutScreen
    await tester.tap(find.byIcon(Icons.info_outline));
    await tester.pumpAndSettle();

    // Verify AboutScreen is shown
    expect(find.text('Tentang Aplikasi'), findsOneWidget);

    // Tap back button
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.pumpAndSettle();

    // Verify back on ProfileScreen
    expect(find.text('Alfian Chandra'), findsOneWidget);
  });
}
