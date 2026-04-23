import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/report/report_widget.dart';
import 'dart:math';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buttonmore_model.dart';
export 'buttonmore_model.dart';

class ButtonmoreWidget extends StatefulWidget {
  const ButtonmoreWidget({super.key});

  @override
  State<ButtonmoreWidget> createState() => _ButtonmoreWidgetState();
}

class _ButtonmoreWidgetState extends State<ButtonmoreWidget>
    with TickerProviderStateMixin {
  late ButtonmoreModel _model;

  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonmoreModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
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
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: AlignedTooltip(
        content: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
          child: Text(
            'รายงาน',
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
        ),
        offset: 4.0,
        preferredDirection: AxisDirection.down,
        borderRadius: BorderRadius.circular(12.0),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 4.0,
        tailBaseWidth: 24.0,
        tailLength: 12.0,
        waitDuration: Duration(milliseconds: 100),
        showDuration: Duration(milliseconds: 1500),
        triggerMode: TooltipTriggerMode.tap,
        child: Builder(
          builder: (context) => InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (animationsMap['containerOnActionTriggerAnimation'] != null) {
                safeSetState(() => hasContainerTriggered = true);
                SchedulerBinding.instance.addPostFrameCallback((_) async =>
                    animationsMap['containerOnActionTriggerAnimation']!
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
                    child: ReportWidget(),
                  );
                },
              );
            },
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  _model.mouseRegionHovered == true
                      ? FlutterFlowTheme.of(context).secondary
                      : FlutterFlowTheme.of(context).primaryBackground,
                  FlutterFlowTheme.of(context).primaryBackground,
                ),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  Icons.keyboard_control,
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered == true
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).secondaryText,
                    FlutterFlowTheme.of(context).secondaryText,
                  ),
                  size: 20.0,
                ),
              ),
            ),
          ).animateOnActionTrigger(
              animationsMap['containerOnActionTriggerAnimation']!,
              hasBeenTriggered: hasContainerTriggered),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
