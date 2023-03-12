import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Cycling_%28track%29_pictogram.svg/1024px-Cycling_%28track%29_pictogram.svg.png',
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.25,
                              fit: BoxFit.scaleDown,
                            ),
                            Text(
                              'Actividades',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF090F13),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                            Divider(
                              height: 60.0,
                              thickness: 3.0,
                              indent: 80.0,
                              endIndent: 80.0,
                              color: Color(0xFF4B39EF),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x43000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 50.0,
                                            height: 50.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'data:image/png;base64,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',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Bicicleta',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 15.0, 16.0, 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height:
                                    MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x43000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 50.0,
                                            height: 50.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              'https://img.freepik.com/vector-premium/figura-persona-caminar-icono-senal-lado-peatonal-vector-personas-linea-silueta-humana_352905-478.jpg?w=2000',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 16.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    'Trote',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                          fontSize: 30.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Last Activity:',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 8.0,
                              ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'Time',
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Text(
                          '03:21:12',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'Distance',
                            style:
                                FlutterFlowTheme.of(context).bodyText2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                        Text(
                          '329m',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF4B39EF),
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 30.0,
                    borderWidth: 3.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.history,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await signOut();

                      context.goNamedAuth('login', mounted);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 30.0,
                    borderWidth: 3.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.linear_scale_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await signOut();

                      context.goNamedAuth('login', mounted);
                    },
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 30.0,
                    borderWidth: 3.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.logout,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await signOut();

                      context.goNamedAuth('login', mounted);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
