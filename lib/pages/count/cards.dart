import 'package:flutter/material.dart';

class DistanceCard {
  final double distance;
  final double time;
  final double speed;
  final DateTime date;

  DistanceCard({
    required this.distance,
    required this.time,
    required this.speed,
    required this.date,
  });
}

class DistanceListWidget extends StatefulWidget {
  const DistanceListWidget({Key? key}) : super(key: key);

  @override
  _DistanceListWidgetState createState() => _DistanceListWidgetState();
}

class _DistanceListWidgetState extends State<DistanceListWidget> {
  List<DistanceCard> _cards = [];

  final _formKey = GlobalKey<FormState>();
  final _distanceController = TextEditingController();
  final _timeController = TextEditingController();

  @override
  void dispose() {
    _distanceController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  void _addCard() {
    if (_formKey.currentState!.validate()) {
      final distance = double.parse(_distanceController.text);
      final time = double.parse(_timeController.text);
      final speed = distance / time;
      final date = DateTime.now();

      final newCard = DistanceCard(
        distance: distance,
        time: time,
        speed: speed,
        date: date,
      );

      setState(() {
        _cards.add(newCard);
      });

      _distanceController.clear();
      _timeController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Form(
          key: _formKey,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _distanceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Distance (km)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a distance';
                    }
                    final distance = double.tryParse(value);
                    if (distance == null || distance <= 0) {
                      return 'Please enter a valid distance';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextFormField(
                  controller: _timeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Time (hours)',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a time';
                    }
                    final time = double.tryParse(value);
                    if (time == null || time <= 0) {
                      return 'Please enter a valid time';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                width: 8,
              ),
              ElevatedButton(
                onPressed: _addCard,
                child: Text('Add'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _cards.length,
            itemBuilder: (context, index) {
              final card = _cards[index];
              return Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Distance: ${card.distance} km'),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Time: ${card.time} hours'),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Speed: ${card.speed} km/h'),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Date: ${card.date.toString()}'),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
