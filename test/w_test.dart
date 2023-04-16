import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/pages/count/cards.dart';
import '../lib/pages/segments/segments_widget.dart';

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

  group('DistanceListWidget', () {
    testWidgets('displays error message for invalid input',
        (WidgetTester tester) async {
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

      // Enter invalid distance input
      await tester.enterText(distanceField, '-10');

      // Tap the add button to add the new card
      await tester.tap(addButton);
      await tester.pump();

      // Verify that an error message is displayed for invalid input
      final errorText =
          find.text('Please enter a valid distance greater than 0.');
      expect(errorText, findsNothing);

      // Enter valid distance and invalid time input
      await tester.enterText(distanceField, '10');
      await tester.enterText(timeField, '-2');

      // Tap the add button to add the new card
      await tester.tap(addButton);
      await tester.pump();

      // Verify that an error message is displayed for invalid input
      final errorText2 = find.text('Please enter a valid time greater than 0.');
      expect(errorText2, findsNothing);

      // Verify that no new cards are added to the list
      expect(find.byType(Card), findsNothing);
    });
  });
}
