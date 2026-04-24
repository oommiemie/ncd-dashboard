import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/background/background_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  static String routeName = 'splash';
  static String routePath = '/splash';

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with TickerProviderStateMixin {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        const Duration(
          milliseconds: 2000,
        ),
      );

      if (!context.mounted) return;
      context.goNamed(
        MainPageWidget.routeName,
        extra: <String, dynamic>{
          '__transition_info__': const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
          ),
        },
      );
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 100.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.5, 0.5),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          wrapWithModel(
            model: _model.backgroundModel,
            updateCallback: () => safeSetState(() {}),
            child: const Hero(
              tag: 'bg',
              transitionOnUserGestures: true,
              child: Material(
                color: Colors.transparent,
                child: BackgroundWidget(),
              ),
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Group_14.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  alignment: const Alignment(1.0, -1.0),
                ),
              ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(valueOrDefault<double>(
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 24.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 24.0;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 40.0;
                  } else {
                    return 40.0;
                  }
                }(),
                0.0,
              )),
              child: Container(
                width: 500.0,
                height: 500.0,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 16.0,
                      color: Color(0x1A000000),
                      offset: Offset(
                        0.0,
                        0.0,
                      ),
                      spreadRadius: 8.0,
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
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xE5FFFFFF),
                        borderRadius: BorderRadius.circular(34.0),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(valueOrDefault<double>(
                          () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 24.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 36.0;
                            } else {
                              return 36.0;
                            }
                          }(),
                          0.0,
                        )),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/logo_MOPH.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  'ยินดีต้อนรับสู่!',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.ibmPlexSansThaiLooped(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  'NCDs Dashboard ',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        font: GoogleFonts.ibmPlexSansThaiLooped(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '“แดชบอร์ดติดตามโรคไม่ติดต่อไม่เรื้อรัง เพื่อมองเห็นภาพสุขภาพและขับเคลื่อนการป้องกันได้อย่างมีประสิทธิภาพ”',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.ibmPlexSansThaiLooped(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                        lineHeight: 1.8,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                            Text(
                              'เวอร์ชั่น 1.0.0',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.ibmPlexSansThaiLooped(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
          ),
        ],
      ),
    );
  }
}
