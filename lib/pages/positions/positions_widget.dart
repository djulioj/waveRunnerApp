import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'positions_model.dart';
export 'positions_model.dart';

class PositionsWidget extends StatefulWidget {
  const PositionsWidget({Key? key}) : super(key: key);

  @override
  _PositionsWidgetState createState() => _PositionsWidgetState();
}

class _PositionsWidgetState extends State<PositionsWidget> {
  late PositionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PositionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 150.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'POSICIONES',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Lexend Deca',
                                    ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(160.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('HomePage');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: StreamBuilder<List<PosicionesRecord>>(
                  stream: queryPosicionesRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<PosicionesRecord> dataTablePosicionesRecordList =
                        snapshot.data!;
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: DataTable2(
                        columns: [
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Usuario',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            fixedWidth: 120.0,
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Tiempo',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                            fixedWidth: 120.0,
                          ),
                          DataColumn2(
                            label: DefaultTextStyle.merge(
                              softWrap: true,
                              child: Text(
                                'Promedio',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.black,
                                    ),
                              ),
                            ),
                            fixedWidth: 120.0,
                          ),
                        ],
                        rows: dataTablePosicionesRecordList
                            .mapIndexed(
                                (dataTableIndex, dataTablePosicionesRecord) => [
                                      Text(
                                        valueOrDefault<String>(
                                          dataTablePosicionesRecord.displayName,
                                          'Usuario x',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dataTablePosicionesRecord.time,
                                          '00:00',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          dataTablePosicionesRecord.avrg,
                                          '00:00',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                      ),
                                    ].map((c) => DataCell(c)).toList())
                            .map((e) => DataRow(cells: e))
                            .toList(),
                        headingRowColor: MaterialStateProperty.all(
                          Color(0xFF4B39EF),
                        ),
                        headingRowHeight: 56.0,
                        dataRowColor: MaterialStateProperty.all(
                          FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        dataRowHeight: 56.0,
                        border: TableBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        dividerThickness: 1.0,
                        showBottomBorder: false,
                        minWidth: 49.0,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
