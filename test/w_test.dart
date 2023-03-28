import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/pages/count/cards.dart';

void main() {
  group('DistanceListWidget', () {
    testWidgets('adds a new card', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DistanceListWidget(),
          ),
        ),
      );

      final distanceField = find.byType(TextFormField).at(0);
      final timeField = find.byType(TextFormField).at(1);
      final addButton = find.byType(ElevatedButton);

      expect(find.byType(Card), findsNothing);

      // Enter valid distance and time inputs
      await tester.enterText(distanceField, '10');
      await tester.enterText(timeField, '2');

      // Tap the add button to add the new card
      await tester.tap(addButton);
      await tester.pump();

      // Verify that the new card is added to the list
      expect(find.byType(Card), findsOneWidget);

      final cardDistance = find.text('Distance: 10.0 km');
      final cardTime = find.text('Time: 2.0 hours');
      final cardSpeed = find.text('Speed: 5.0 km/h');

      expect(cardDistance, findsOneWidget);
      expect(cardTime, findsOneWidget);
      expect(cardSpeed, findsOneWidget);
    });
  });
}
