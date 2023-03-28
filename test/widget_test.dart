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
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      body: SegmentsWidget(),
    )));
    expect(find.text('Nuevo'), findsOneWidget);
  });
}
