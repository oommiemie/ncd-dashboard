import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:math';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_select_widget_model.dart';
export 'button_select_widget_model.dart';

class ButtonSelectWidgetWidget extends StatefulWidget {
  const ButtonSelectWidgetWidget({
    super.key,
    this.text,
    this.select,
    required this.action,
    this.color,
  });

  final String? text;
  final String? select;
  final Future Function()? action;
  final Color? color;

  @override
  State<ButtonSelectWidgetWidget> createState() =>
      _ButtonSelectWidgetWidgetState();
}

class _ButtonSelectWidgetWidgetState extends State<ButtonSelectWidgetWidget>
    with TickerProviderStateMixin {
  late ButtonSelectWidgetModel _model;

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
    _model = createModel(context, () => ButtonSelectWidgetModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.08, 1.0),
            end: const Offset(1.0, 1.0),
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
    return InkWell(
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
        unawaited(
          () async {
            await widget.action?.call();
          }(),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.select == widget.text
              ? widget.color
              : FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget.select == widget.text
                  ? FlutterFlowTheme.of(context).secondaryBackground
                  : FlutterFlowTheme.of(context).alternate,
              FlutterFlowTheme.of(context).alternate,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
          child: Text(
            valueOrDefault<String>(
              widget.text,
              'Text',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.ibmPlexSansThaiLooped(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.select == widget.text
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).primaryText,
                    FlutterFlowTheme.of(context).primaryText,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ),
    ).animateOnActionTrigger(
        animationsMap['containerOnActionTriggerAnimation']!,
        hasBeenTriggered: hasContainerTriggered);
  }
}
