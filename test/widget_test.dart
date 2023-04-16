// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:wave_runner/main.dart';
import 'package:wave_runner/index.dart';

import 'package:firebase_core/firebase_core.dart';
import '../lib/backend/firebase/firebase_config.dart';

import 'package:get/get.dart';

void main() {
  testWidgets('find text in segments', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      body: SegmentsWidget(),
    )));
    expect(find.text('Nuevo'), findsOneWidget);
  });

  group('SegmentsWidget', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: SegmentsWidget(),
        ),
      );

      // Finds the 'Mis Segmentos' text
      final misSegmentosTextFinder = find.text('Mis Segmentos');
      expect(misSegmentosTextFinder, findsOneWidget);

      // Finds the back arrow button
      final backArrowButtonFinder = find.byIcon(Icons.arrow_back_rounded);
      expect(backArrowButtonFinder, findsOneWidget);
    });
  });
}
