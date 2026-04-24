import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_widget2_model.dart';
export 'card_widget2_model.dart';

class CardWidget2Widget extends StatefulWidget {
  const CardWidget2Widget({
    super.key,
    this.label,
    this.num,
    this.image,
    this.colorBackground1,
    this.colorBackground2,
    required this.subtitle1,
    required this.value1,
    required this.subtitle2,
    required this.value2,
    required this.subtitle3,
    required this.value3,
  });

  final String? label;
  final int? num;
  final String? image;
  final Color? colorBackground1;
  final Color? colorBackground2;
  final String? subtitle1;
  final int? value1;
  final String? subtitle2;
  final int? value2;
  final String? subtitle3;
  final int? value3;

  @override
  State<CardWidget2Widget> createState() => _CardWidget2WidgetState();
}

class _CardWidget2WidgetState extends State<CardWidget2Widget>
    with TickerProviderStateMixin {
  late CardWidget2Model _model;

  var hasCircleImageTriggered1 = false;
  var hasCircleImageTriggered2 = false;
  var hasCircleImageTriggered3 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardWidget2Model());

    animationsMap.addAll({
      'circleImageOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-25.0, -25.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.05, 1.05),
          ),
        ],
      ),
      'circleImageOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 20.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-50.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 20.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.05, 1.05),
          ),
        ],
      ),
      'circleImageOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 140.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-12.0, 10.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 140.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(1.05, 1.05),
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

  Widget _buildSubStat(BuildContext context, String label, int? value) {
    final formatted = formatNumber(
      value,
      formatType: FormatType.decimal,
      decimalType: DecimalType.periodDecimal,
    );
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(5.0, 2.0, 5.0, 2.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12.0, sigmaY: 12.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0x2B000000),
              borderRadius: BorderRadius.circular(14.0),
              border: Border.all(color: const Color(0x26FFFFFF), width: 1),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        font: GoogleFonts.ibmPlexSansThaiLooped(
                          fontWeight: FontWeight.w400,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        ),
                        color: const Color(0xCCFFFFFF),
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w400,
                        fontSize: 9.0,
                        lineHeight: 1.15,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  valueOrDefault<String>(formatted, '0'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.ibmPlexSansThaiLooped(
                          fontWeight: FontWeight.w700,
                          fontStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        letterSpacing: 0.0,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
        if (animationsMap['circleImageOnActionTriggerAnimation1'] != null) {
          safeSetState(() => hasCircleImageTriggered1 = true);
          SchedulerBinding.instance.addPostFrameCallback((_) async =>
              animationsMap['circleImageOnActionTriggerAnimation1']!
                  .controller
                  .forward(from: 0.0));
        }
        if (animationsMap['circleImageOnActionTriggerAnimation2'] != null) {
          safeSetState(() => hasCircleImageTriggered2 = true);
          SchedulerBinding.instance.addPostFrameCallback((_) async =>
              animationsMap['circleImageOnActionTriggerAnimation2']!
                  .controller
                  .forward(from: 0.0));
        }
        if (animationsMap['circleImageOnActionTriggerAnimation3'] != null) {
          safeSetState(() => hasCircleImageTriggered3 = true);
          SchedulerBinding.instance.addPostFrameCallback((_) async =>
              animationsMap['circleImageOnActionTriggerAnimation3']!
                  .controller
                  .forward(from: 0.0));
        }
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
        if (animationsMap['circleImageOnActionTriggerAnimation1'] != null) {
          animationsMap['circleImageOnActionTriggerAnimation1']!
              .controller
              .reverse();
        }
        if (animationsMap['circleImageOnActionTriggerAnimation2'] != null) {
          animationsMap['circleImageOnActionTriggerAnimation2']!
              .controller
              .reverse();
        }
        if (animationsMap['circleImageOnActionTriggerAnimation3'] != null) {
          animationsMap['circleImageOnActionTriggerAnimation3']!
              .controller
              .reverse();
        }
      }),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: _model.mouseRegionHovered == true ? 4.0 : 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Container(
          width: double.infinity,
          height: 150.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                valueOrDefault<Color>(
                  widget!.colorBackground1,
                  FlutterFlowTheme.of(context).secondaryBackground,
                ),
                valueOrDefault<Color>(
                  widget!.colorBackground2,
                  FlutterFlowTheme.of(context).secondaryBackground,
                )
              ],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Stack(
            children: [
              if (_model.mouseRegionHovered == true)
                Opacity(
                  opacity: 0.5,
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: 24.0,
                      height: 24.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/ChatGPT_Image_16_.._2568_13_55_27.png',
                        fit: BoxFit.cover,
                      ),
                    ).animateOnActionTrigger(
                        animationsMap['circleImageOnActionTriggerAnimation1']!,
                        hasBeenTriggered: hasCircleImageTriggered1),
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: valueOrDefault<double>(
                    _model.mouseRegionHovered == true ? 70.0 : 50.0,
                    50.0,
                  ),
                  height: 90.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      image: Image.network(
                        valueOrDefault<String>(
                          widget!.image,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/2hbicdd32oy1/dashboard_no_bg.png',
                        ),
                      ).image,
                    ),
                  ),
                ),
              ),
              if (_model.mouseRegionHovered == true)
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: 32.0,
                      height: 32.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/ChatGPT_Image_16_.._2568_13_55_27.png',
                        fit: BoxFit.cover,
                      ),
                    ).animateOnActionTrigger(
                        animationsMap['circleImageOnActionTriggerAnimation2']!,
                        hasBeenTriggered: hasCircleImageTriggered2),
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget!.label,
                          'label',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.ibmPlexSansThaiLooped(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: _buildSubStat(
                            context,
                            widget.subtitle1 ?? 'subtitle1',
                            widget.value1,
                          ),
                        ),
                        Expanded(
                          child: _buildSubStat(
                            context,
                            widget.subtitle2 ?? 'subtitle2',
                            widget.value2,
                          ),
                        ),
                        Expanded(
                          child: _buildSubStat(
                            context,
                            widget.subtitle3 ?? 'subtitle3',
                            widget.value3,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 20.0,
                          sigmaY: 20.0,
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xE6FFFFFF),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      formatNumber(
                                        widget!.num,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.periodDecimal,
                                      ),
                                      '0',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font:
                                              GoogleFonts.ibmPlexSansThaiLooped(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          color: widget!.colorBackground2,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextSpan(
                                    text: '  คน',
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font:
                                              GoogleFonts.ibmPlexSansThaiLooped(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
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
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (_model.mouseRegionHovered == true)
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: 18.0,
                      height: 18.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/ChatGPT_Image_16_.._2568_13_55_27.png',
                        fit: BoxFit.cover,
                      ),
                    ).animateOnActionTrigger(
                        animationsMap['circleImageOnActionTriggerAnimation3']!,
                        hasBeenTriggered: hasCircleImageTriggered3),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
