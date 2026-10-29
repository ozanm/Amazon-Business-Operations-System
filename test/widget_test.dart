// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:amazon_business_operations_system/app/app.dart';

void main() {
  group('Amazon Business Operations System', () {
    testWidgets('Application launches successfully', (WidgetTester tester) async {
      // Build the application.
      await tester.pumpWidget(
        const AmazonBusinessOperationsSystemApp(),
      );

      // Verify that the application exists.
      expect(
        find.byType(MaterialApp),
        findsOneWidget,
      );
    });

    testWidgets('Dashboard displays the application title', (WidgetTester tester) async {
      // Build the application.
      await tester.pumpWidget(
        const AmazonBusinessOperationsSystemApp(),
      );

      // Verify the dashboard displays its title.
      expect(
        find.text('Amazon Business Operations System'),
        findsWidgets,
      );
    });
  });
}