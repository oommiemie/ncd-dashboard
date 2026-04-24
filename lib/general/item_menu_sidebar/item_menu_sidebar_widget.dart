import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
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
import 'item_menu_sidebar_model.dart';
export 'item_menu_sidebar_model.dart';

class ItemMenuSidebarWidget extends StatefulWidget {
  const ItemMenuSidebarWidget({
    super.key,
    this.label,
    required this.action,
    this.sidbar,
    this.iconDefault,
    this.iconValue,
  });

  final String? label;
  final Future Function()? action;
  final int? sidbar;
  final String? iconDefault;
  final String? iconValue;

  @override
  State<ItemMenuSidebarWidget> createState() => _ItemMenuSidebarWidgetState();
}

class _ItemMenuSidebarWidgetState extends State<ItemMenuSidebarWidget>
    with TickerProviderStateMixin {
  late ItemMenuSidebarModel _model;

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
    _model = createModel(context, () => ItemMenuSidebarModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.05, 1.05),
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
    context.watch<FFAppState>();
    context.watch<u_i_library_3c2hbt_app_state.FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
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
            color: valueOrDefault<Color>(
              FFAppState().Sidbar == widget!.sidbar
                  ? FlutterFlowTheme.of(context).secondaryBackground
                  : valueOrDefault<Color>(
                      _model.mouseRegionHovered == true
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : Color(0x00FFFFFF),
                      Color(0x00FFFFFF),
                    ),
              Color(0x00FFFFFF),
            ),
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 12.0, 6.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    FFAppState().Sidbar == widget!.sidbar
                        ? valueOrDefault<String>(
                            widget!.iconValue,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/tvs8idm6s818/icon1a.png',
                          )
                        : valueOrDefault<String>(
                            widget!.iconDefault,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                          ),
                    width: 24.0,
                    height: 24.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.label,
                        'menu',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.ibmPlexSansThaiLooped(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              FFAppState().Sidbar == widget!.sidbar
                                  ? FlutterFlowTheme.of(context).secondary
                                  : FlutterFlowTheme.of(context).primaryText,
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ].divide(SizedBox(width: 8.0)),
            ),
          ),
        ),
      ).animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation']!,
          hasBeenTriggered: hasContainerTriggered),
    );
  }
}
