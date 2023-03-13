import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_segment_model.dart';
export 'new_segment_model.dart';

class NewSegmentWidget extends StatefulWidget {
  const NewSegmentWidget({Key? key}) : super(key: key);

  @override
  _NewSegmentWidgetState createState() => _NewSegmentWidgetState();
}

class _NewSegmentWidgetState extends State<NewSegmentWidget>
    with TickerProviderStateMixin {
  late NewSegmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewSegmentModel());

    _model.textController ??= TextEditingController();
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
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('Segments');
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Align(
                      alignment: AlignmentDirectional(-0.5, 0.0),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Cycling_%28track%29_pictogram.svg/1024px-Cycling_%28track%29_pictogram.svg.png',
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.15,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                          'NUEVO SEGMENTO',
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
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Nombre',
                  textAlign: TextAlign.justify,
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF0F1113),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 2.0, 10.0, 2.0),
                child: TextFormField(
                  controller: _model.textController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Digita el nombre del segmento',
                    labelStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF0F1113),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  maxLines: null,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: StreamBuilder<List<RecorridosRecord>>(
                          stream: queryRecorridosRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<RecorridosRecord>
                                dataTableRecorridosRecordList = snapshot.data!;
                            return DataTable2(
                              columns: [
                                DataColumn2(
                                  label: DefaultTextStyle.merge(
                                    softWrap: true,
                                    child: Text(
                                      'Lista de Recorridos',
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: dataTableRecorridosRecordList
                                  .mapIndexed((dataTableIndex,
                                          dataTableRecorridosRecord) =>
                                      [
                                        InkWell(
                                          onTap: () async {
                                            context.pushNamed('ConfirmSegment');
                                          },
                                          child: Text(
                                            valueOrDefault<String>(
                                              dataTableRecorridosRecord
                                                  .recorrido,
                                              'Recorrido x',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                ),
                                          ),
                                        ),
                                      ].map((c) => DataCell(c)).toList())
                                  .map((e) => DataRow(cells: e))
                                  .toList(),
                              headingRowColor: MaterialStateProperty.all(
                                Color(0xFF297DEE),
                              ),
                              headingRowHeight: 56.0,
                              dataRowColor: MaterialStateProperty.all(
                                FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              dataRowHeight: 56.0,
                              border: TableBorder(
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              dividerThickness: 2.0,
                              showBottomBorder: false,
                              minWidth: 49.0,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
