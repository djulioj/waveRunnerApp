import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_segment_model.dart';
export 'confirm_segment_model.dart';

class ConfirmSegmentWidget extends StatefulWidget {
  const ConfirmSegmentWidget({Key? key}) : super(key: key);

  @override
  _ConfirmSegmentWidgetState createState() => _ConfirmSegmentWidgetState();
}

class _ConfirmSegmentWidgetState extends State<ConfirmSegmentWidget> {
  late ConfirmSegmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmSegmentModel());
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('NewSegment');
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  'Marque su segmento',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Lexend Deca',
                      ),
                ),
              ),
              Divider(
                thickness: 3.0,
                indent: 80.0,
                endIndent: 80.0,
                color: Color(0xFF4B39EF),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x34111417),
                          offset: Offset(0.0, -2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://image.winudf.com/v2/image1/Y29tLnV0aWxlc2FwcHMuY2FtYXJhc2ZvdG9tdWx0YXNiYXJyYW5xdWlsbGFfc2NyZWVuXzBfMTYwMDY0MzgxMF8wNzE/screen-0.jpg?fakeurl=1&type=.webp',
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.6,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).primaryText,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.check,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('Positions');
                    },
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
