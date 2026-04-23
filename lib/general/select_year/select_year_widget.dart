import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/item_select_widget/item_select_widget_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_year_model.dart';
export 'select_year_model.dart';

class SelectYearWidget extends StatefulWidget {
  const SelectYearWidget({super.key});

  @override
  State<SelectYearWidget> createState() => _SelectYearWidgetState();
}

class _SelectYearWidgetState extends State<SelectYearWidget>
    with TickerProviderStateMixin {
  late SelectYearModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectYearModel());

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
    context.watch<FFAppState>();
    context.watch<u_i_library_3c2hbt_app_state.FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: Container(
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
              width: 400.0,
              height: 350.0,
              constraints: const BoxConstraints(
                maxHeight: 500.0,
              ),
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
                          'กรองข้อมูลปี',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = false);
                          }),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: _model.mouseRegionHovered == true
                                    ? FlutterFlowTheme.of(context).customColor21
                                    : Color(0x00000000),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                child: Text(
                                  'ตกลง',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.ibmPlexSansThaiLooped(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: _model.mouseRegionHovered == true
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .customColor21,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 150.0,
                            decoration: const BoxDecoration(),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'ปี พ.ศ',
                                      select: FFAppState().selectyear,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {
                                        FFAppState().update(() { FFAppState().selectyear = 'ปี พ.ศ'; });
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'ปีงบประมาณ',
                                      select: FFAppState().selectyear,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {
                                        FFAppState().update(() { FFAppState().selectyear = 'ปีงบประมาณ'; });
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: 200.0,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Builder(
                              builder: (context) {
                                if (FFAppState().selectyear == 'ปี พ.ศ') {
                                  return Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ตัวเลือก ปี พ.ศ',
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
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2568',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2568'; });
                                                      safeSetState(() {});
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2567',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2567'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2566',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2566'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel6,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2565',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2565'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel7,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2564',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2564'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ].divide(
                                                  const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  );
                                } else if (FFAppState().selectyear ==
                                    'ปีงบประมาณ') {
                                  return Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ตัวเลือกปีงบประมาณ',
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
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Expanded(
                                          child: SingleChildScrollView(
                                            primary: false,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel8,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2568',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2568'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel9,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2567',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2567'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel10,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2566',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2566'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel11,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2565',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2565'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model
                                                      .itemSelectWidgetModel12,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ItemSelectWidgetWidget(
                                                    text: '2564',
                                                    select:
                                                        FFAppState().itemyear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    action: () async {
                                                      FFAppState().update(() { FFAppState().itemyear = '2564'; });
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                              ].divide(
                                                  const SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  );
                                } else {
                                  return const Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
                                  );
                                }
                              },
                            ),
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
