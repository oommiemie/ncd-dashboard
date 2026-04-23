import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/select_health_district/select_health_district_widget.dart';
import '/general/select_year/select_year_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_model.dart';
export 'app_bar_model.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    super.key,
    bool? filteryear,
    bool? filterprovince,
    bool? filtermore,
    this.label,
  })  : this.filteryear = filteryear ?? true,
        this.filterprovince = filterprovince ?? true,
        this.filtermore = filtermore ?? true;

  final bool filteryear;
  final bool filterprovince;
  final bool filtermore;
  final String? label;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>
    with TickerProviderStateMixin {
  late AppBarModel _model;

  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.08, 1.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.08, 1.0),
            end: Offset(1.0, 1.0),
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

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x1A000000),
            offset: Offset(
              0.0,
              0.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                valueOrDefault<String>(
                  widget!.label,
                  'Label',
                ),
                maxLines: 1,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.ibmPlexSansThaiLooped(
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                    ),
                overflow: TextOverflow.fade,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (_model.filterYear == widget!.filteryear)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'ปี :',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  font: GoogleFonts.ibmPlexSansThaiLooped(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                      ),
                      MouseRegion(
                        opaque: false,
                        cursor: MouseCursor.defer ?? MouseCursor.defer,
                        child: Builder(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (animationsMap[
                                      'containerOnActionTriggerAnimation1'] !=
                                  null) {
                                safeSetState(
                                    () => hasContainerTriggered1 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => animationsMap[
                                            'containerOnActionTriggerAnimation1']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                              showAlignedDialog(
                                barrierColor: Colors.transparent,
                                context: context,
                                isGlobal: false,
                                avoidOverflow: true,
                                targetAnchor: AlignmentDirectional(1.0, 1.0)
                                    .resolve(Directionality.of(context)),
                                followerAnchor: AlignmentDirectional(1.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                builder: (dialogContext) {
                                  return Material(
                                    color: Colors.transparent,
                                    child: SelectYearWidget(),
                                  );
                                },
                              );
                            },
                            child: Container(
                              width: 120.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.mouseRegionHovered1 == true
                                      ? FlutterFlowTheme.of(context).secondary
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '2568',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts
                                                .ibmPlexSansThaiLooped(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: valueOrDefault<Color>(
                                              _model.mouseRegionHovered1 == true
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .primary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                            ),
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
                                    Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: valueOrDefault<Color>(
                                        _model.mouseRegionHovered1 == true
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .primary,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                      size: 20.0,
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                              animationsMap[
                                  'containerOnActionTriggerAnimation1']!,
                              hasBeenTriggered: hasContainerTriggered1),
                        ),
                        onEnter: ((event) async {
                          safeSetState(() => _model.mouseRegionHovered1 = true);
                        }),
                        onExit: ((event) async {
                          safeSetState(
                              () => _model.mouseRegionHovered1 = false);
                        }),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'เขตสุขภาพ :',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.ibmPlexSansThaiLooped(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Builder(
                        builder: (context) => InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation2'] !=
                                null) {
                              safeSetState(() => hasContainerTriggered2 = true);
                              SchedulerBinding.instance.addPostFrameCallback(
                                  (_) async => animationsMap[
                                          'containerOnActionTriggerAnimation2']!
                                      .controller
                                      .forward(from: 0.0));
                            }
                            showAlignedDialog(
                              barrierColor: Colors.transparent,
                              context: context,
                              isGlobal: false,
                              avoidOverflow: true,
                              targetAnchor: AlignmentDirectional(1.0, 1.0)
                                  .resolve(Directionality.of(context)),
                              followerAnchor: AlignmentDirectional(1.0, -1.0)
                                  .resolve(Directionality.of(context)),
                              builder: (dialogContext) {
                                return Material(
                                  color: Colors.transparent,
                                  child: SelectHealthDistrictWidget(),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                _model.mouseRegionHovered2 == true
                                    ? FlutterFlowTheme.of(context).secondary
                                    : FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                FlutterFlowTheme.of(context).primaryBackground,
                              ),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      FFAppState().FilterHealthDistrict,
                                      'ทั้งหมด',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font:
                                              GoogleFonts.ibmPlexSansThaiLooped(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: valueOrDefault<Color>(
                                            _model.mouseRegionHovered2 == true
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .primary,
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
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
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered2 == true
                                          ? FlutterFlowTheme.of(context)
                                              .secondaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .primary,
                                      FlutterFlowTheme.of(context).secondary,
                                    ),
                                    size: 20.0,
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                        ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation2']!,
                            hasBeenTriggered: hasContainerTriggered2),
                      ),
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered2 = true);
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered2 = false);
                      }),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
          ],
        ),
      ),
    );
  }
}
