import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'n_c_d_cases_by_gender_widget_model.dart';
export 'n_c_d_cases_by_gender_widget_model.dart';

class NCDCasesByGenderWidgetWidget extends StatefulWidget {
  const NCDCasesByGenderWidgetWidget({super.key});

  @override
  State<NCDCasesByGenderWidgetWidget> createState() =>
      _NCDCasesByGenderWidgetWidgetState();
}

class _NCDCasesByGenderWidgetWidgetState
    extends State<NCDCasesByGenderWidgetWidget> {
  late NCDCasesByGenderWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NCDCasesByGenderWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'จำนวนผู้ป่วยแยกตามเพศ',
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        font: GoogleFonts.ibmPlexSansThaiLooped(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF01D8E6),
                                FlutterFlowTheme.of(context).primary
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(1.0, 0.0),
                              end: const AlignmentDirectional(-1.0, 0),
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(100.0),
                              bottomLeft: Radius.circular(100.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 200.0,
                                      height: 200.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/ChatGPT_Image_16_.._2568_16_39_46.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    '25,466 (40%)',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font:
                                              GoogleFonts.ibmPlexSansThaiLooped(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).customColor4,
                                const Color(0xFFD672F8)
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(1.0, 0.0),
                              end: const AlignmentDirectional(-1.0, 0),
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(100.0),
                              bottomRight: Radius.circular(100.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Text(
                                    '4,2455 (60%)',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font:
                                              GoogleFonts.ibmPlexSansThaiLooped(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 200.0,
                                      height: 200.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                        'assets/images/ChatGPT_Image_16_.._2568_16_44_34.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
