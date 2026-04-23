import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loading_model.dart';
export 'loading_model.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late LoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x26000000),
                  offset: Offset(
                    0.0,
                    0.0,
                  ),
                )
              ],
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 60.0,
              height: 60.0,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xA5FFFFFF),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20.0,
                        sigmaY: 20.0,
                      ),
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0x40FFFFFF),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x1AFFFFFF),
                              offset: Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0x27FFFFFF),
                          ),
                        ),
                        child: Lottie.asset(
                          'assets/jsons/Processing_loading.json',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                          animate: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            'กำลังโหลดข้อมูล',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.ibmPlexSansThaiLooped(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
