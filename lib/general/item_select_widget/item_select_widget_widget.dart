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
import 'item_select_widget_model.dart';
export 'item_select_widget_model.dart';

class ItemSelectWidgetWidget extends StatefulWidget {
  const ItemSelectWidgetWidget({
    super.key,
    this.text,
    this.select,
    required this.action,
    this.color,
    this.textcolor,
  });

  final String? text;
  final String? select;
  final Future Function()? action;
  final Color? color;
  final Color? textcolor;

  @override
  State<ItemSelectWidgetWidget> createState() => _ItemSelectWidgetWidgetState();
}

class _ItemSelectWidgetWidgetState extends State<ItemSelectWidgetWidget>
    with TickerProviderStateMixin {
  late ItemSelectWidgetModel _model;

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
    _model = createModel(context, () => ItemSelectWidgetModel());

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
      child: InkWell(
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
          width: double.infinity,
          decoration: BoxDecoration(
            color: widget!.select == widget!.text
                ? widget!.color
                : (_model.mouseRegionHovered == true
                    ? Color(0x1924B8C2)
                    : Color(0x00000000)),
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
            child: Text(
              valueOrDefault<String>(
                widget!.text,
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
                      widget!.select == widget!.text
                          ? valueOrDefault<Color>(
                              widget!.textcolor,
                              FlutterFlowTheme.of(context).secondaryBackground,
                            )
                          : FlutterFlowTheme.of(context).primaryText,
                      FlutterFlowTheme.of(context).primaryText,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
          ),
        ),
      ).animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation']!,
          hasBeenTriggered: hasContainerTriggered),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
