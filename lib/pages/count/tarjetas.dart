import 'package:flutter/material.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '/db/db.dart';
import '/model/entry.dart';
import '/pages/count/count.dart';
import '/pages/count/entry_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Entry> _data;
  List<EntryCard> _cards = [];

  void initState() {
    super.initState();
    DB.init().then((value) => _fetchEntries());
  }

  void _fetchEntries() async {
    _cards = [];
    List<Map<String, dynamic>> _results = await DB.query(Entry.table);
    _data = _results.map((item) => Entry.fromMap(item)).toList();
    _data.forEach((element) => _cards.add(EntryCard(entry: element)));
    setState(() {});
  }

  void _addEntries(Entry en) async {
    DB.insert(Entry.table, en);
    _fetchEntries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WaveRunner",
            style: TextStyle(
              fontFamily: 'Outfit',
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            )),
        backgroundColor: Color(0xFF4B39EF),
      ),
      body: ListView(
        children: _cards,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MapPage()))
            .then((value) => _addEntries(value)),
        tooltip: 'Increment',
        child: Icon(
          Icons.play_arrow,
        ),
        backgroundColor: Color(0xFF4B39EF),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
