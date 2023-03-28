import '../lib/pages/count/calculateDistance.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('calculateDistance returns the correct distance', () {
    // Arrange
    final lat1 = 52.520008;
    final lon1 = 13.404954;
    final lat2 = 51.507351;
    final lon2 = -0.127758;
    final expectedDistance = 931.56; // in kilometers

    // Act
    final distance_class = Distance();
    final distance = distance_class.calculateDistance(lat1, lon1, lat2, lon2);

    // Assert
    expect(distance, closeTo(expectedDistance, 0.01));
  });
}
