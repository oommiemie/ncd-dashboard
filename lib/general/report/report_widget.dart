import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'report_model.dart';
export 'report_model.dart';

class ReportWidget extends StatefulWidget {
  const ReportWidget({super.key});

  @override
  State<ReportWidget> createState() => _ReportWidgetState();
}

class _ReportWidgetState extends State<ReportWidget>
    with TickerProviderStateMixin {
  late ReportModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.1, 1.0),
            end: const Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 8.0,
            color: Color(0x25000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 2.0,
          )
        ],
        borderRadius: BorderRadius.circular(34.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(34.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20.0,
            sigmaY: 20.0,
          ),
          child: Container(
            width: 380.0,
            decoration: BoxDecoration(
              color: const Color(0xB2FFFFFF),
              borderRadius: BorderRadius.circular(34.0),
              border: Border.all(
                color: const Color(0xCBFFFFFF),
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ดาวน์โหลดรายงาน',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.ibmPlexSansThaiLooped(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered1 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered1 = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: valueOrDefault<double>(
                              _model.mouseRegionHovered1 == true ? 4.0 : 0.0,
                              0.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).customColor20,
                                    FlutterFlowTheme.of(context).customColor19
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered1 == true
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : Color(0x00FFFFFF),
                                    Color(0x00FFFFFF),
                                  ),
                                  width: valueOrDefault<double>(
                                    _model.mouseRegionHovered1 == true
                                        ? 1.0
                                        : 0.0,
                                    0.0,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Excel',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'ดาวน์โหลดเป็นไฟล์ Microsoft Excel (.xIsx)',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 1.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: valueOrDefault<double>(
                                        _model.mouseRegionHovered1 == true
                                            ? 80.0
                                            : 60.0,
                                        60.0,
                                      ),
                                      height: valueOrDefault<double>(
                                        _model.mouseRegionHovered1 == true
                                            ? 70.0
                                            : 50.0,
                                        50.0,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
                                          image: Image.asset(
                                            'assets/images/Microsoft_Office_Excel_(2025present).svg.png',
                                          ).image,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(24.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered2 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered2 = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: valueOrDefault<double>(
                              _model.mouseRegionHovered2 == true ? 4.0 : 0.0,
                              0.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).customColor16,
                                    FlutterFlowTheme.of(context).customColor15
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered2 == true
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : Color(0x00FFFFFF),
                                    Color(0x00FFFFFF),
                                  ),
                                  width: valueOrDefault<double>(
                                    _model.mouseRegionHovered2 == true
                                        ? 1.0
                                        : 0.0,
                                    0.0,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 1.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: valueOrDefault<double>(
                                        _model.mouseRegionHovered2 == true
                                            ? 80.0
                                            : 60.0,
                                        60.0,
                                      ),
                                      height: valueOrDefault<double>(
                                        _model.mouseRegionHovered2 == true
                                            ? 70.0
                                            : 50.0,
                                        50.0,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
                                          image: Image.asset(
                                            'assets/images/Frame_61.png',
                                          ).image,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(24.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PDF',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'ดาวน์โหลดเป็นไฟล์ PDF (.pdf)',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered3 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered3 = false);
                        }),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: valueOrDefault<double>(
                              _model.mouseRegionHovered3 == true ? 4.0 : 0.0,
                              0.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 80.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).customColor17,
                                    FlutterFlowTheme.of(context).primary
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered3 == true
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : Color(0x00FFFFFF),
                                    Color(0x00FFFFFF),
                                  ),
                                  width: valueOrDefault<double>(
                                    _model.mouseRegionHovered3 == true
                                        ? 1.0
                                        : 0.0,
                                    0.0,
                                  ),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 1.0),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeInOut,
                                      width: valueOrDefault<double>(
                                        _model.mouseRegionHovered3 == true
                                            ? 80.0
                                            : 60.0,
                                        60.0,
                                      ),
                                      height: valueOrDefault<double>(
                                        _model.mouseRegionHovered3 == true
                                            ? 70.0
                                            : 50.0,
                                        50.0,
                                      ),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          alignment:
                                              AlignmentDirectional(1.0, -1.0),
                                          image: Image.asset(
                                            'assets/images/Frame_62.png',
                                          ).image,
                                        ),
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(24.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'รูปภาพ',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'ดาวน์โหลดเป็นไฟล์ ภาพ (.png)',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ].divide(const SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
