import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '/model/entry.dart';

class EntryCard extends StatelessWidget {
  final Entry entry;
  EntryCard({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(entry.date,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF4B39EF),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          )),
                  Text((entry.distance / 1000).toStringAsFixed(2) + " km",
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF101213),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(entry.duration,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF101213),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          )),
                  Text(entry.speed.toStringAsFixed(2) + " km/h",
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF101213),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          )),
                ],
              ),
              Divider(
                thickness: 3.0,
                indent: 80.0,
                endIndent: 80.0,
                color: Color(0xFF4B39EF),
              ),
            ],
          )),
    );
  }
}
