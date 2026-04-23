import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sidebar_model.dart';
export 'sidebar_model.dart';

class SidebarWidget extends StatefulWidget {
  const SidebarWidget({
    super.key,
    int? selet,
  }) : selet = selet ?? 1;

  final int selet;

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  late SidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SidebarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
      child: Container(
        width: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 150.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 150.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 150.0;
          } else {
            return 200.0;
          }
        }(),
        height: double.infinity,
        decoration: BoxDecoration(
          boxShadow: const [
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
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(34.0),
                border: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(34.0),
                          bottomRight: Radius.circular(34.0),
                        ),
                        child: Image.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/dp5zqbul7xnc/sibar.png',
                          width: double.infinity,
                          height: 700.0,
                          fit: BoxFit.cover,
                          alignment: const Alignment(0.0, -1.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
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
                            'NCDs Dashboard ',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.ibmPlexSansThaiLooped(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
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
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered1 = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered1 = false);
                                  }),
                                  child: InkWell(
                                    splashColor: const Color(0x4D24B8C2),
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: const Color(0x2624B8C2),
                                    onTap: () async {
                                      context.goNamed(
                                        MainPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 350),
                                          ),
                                        },
                                      );
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 250),
                                      curve: Curves.easeOutCubic,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          widget!.selet == 1
                                              ? Color(0x3324B8C2)
                                              : Color(0x7FFFFFFF),
                                          Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            _model.mouseRegionHovered1 == true
                                                ? Color(0x3224B8C2)
                                                : Color(0x00FFFFFF),
                                            Color(0x00FFFFFF),
                                          ),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      widget!.selet == 1
                                                          ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/tvs8idm6s818/icon1a.png'
                                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                    ),
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'หน้าหลัก',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .ibmPlexSansThaiLooped(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget!.selet == 1
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered2 = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered2 = false);
                                  }),
                                  child: InkWell(
                                    splashColor: const Color(0x4D24B8C2),
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: const Color(0x2624B8C2),
                                    onTap: () async {
                                      context.goNamed(
                                        PressurePageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 350),
                                          ),
                                        },
                                      );
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 250),
                                      curve: Curves.easeOutCubic,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          widget!.selet == 2
                                              ? Color(0x3324B8C2)
                                              : Color(0x7FFFFFFF),
                                          Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            _model.mouseRegionHovered2 == true
                                                ? Color(0x3224B8C2)
                                                : Color(0x00FFFFFF),
                                            Color(0x00FFFFFF),
                                          ),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      widget!.selet == 2
                                                          ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/tvs8idm6s818/icon1a.png'
                                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                    ),
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'ความดัน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .ibmPlexSansThaiLooped(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget!.selet == 2
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered3 = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered3 = false);
                                  }),
                                  child: InkWell(
                                    splashColor: const Color(0x4D24B8C2),
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: const Color(0x2624B8C2),
                                    onTap: () async {
                                      context.goNamed(
                                        DiabetesPageWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 350),
                                          ),
                                        },
                                      );
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 250),
                                      curve: Curves.easeOutCubic,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          widget!.selet == 3
                                              ? Color(0x3324B8C2)
                                              : Color(0x7FFFFFFF),
                                          Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            _model.mouseRegionHovered3 == true
                                                ? Color(0x3224B8C2)
                                                : Color(0x00FFFFFF),
                                            Color(0x00FFFFFF),
                                          ),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      widget!.selet == 3
                                                          ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/tvs8idm6s818/icon1a.png'
                                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                    ),
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'เบาหวาน',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .ibmPlexSansThaiLooped(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget!.selet == 3
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered4 = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered4 = false);
                                  }),
                                  child: InkWell(
                                    splashColor: const Color(0x4D24B8C2),
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: const Color(0x2624B8C2),
                                    onTap: () async {
                                      context.goNamed(
                                        StrokeWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 350),
                                          ),
                                        },
                                      );
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 250),
                                      curve: Curves.easeOutCubic,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          widget!.selet == 4
                                              ? Color(0x3324B8C2)
                                              : Color(0x7FFFFFFF),
                                          Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            _model.mouseRegionHovered4 == true
                                                ? Color(0x3224B8C2)
                                                : Color(0x00FFFFFF),
                                            Color(0x00FFFFFF),
                                          ),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      widget!.selet == 4
                                                          ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/tvs8idm6s818/icon1a.png'
                                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                    ),
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'หลอดเลือดสมอง',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .ibmPlexSansThaiLooped(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget!.selet == 4
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                MouseRegion(
                                  opaque: false,
                                  cursor:
                                      MouseCursor.defer ?? MouseCursor.defer,
                                  onEnter: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered5 = true);
                                  }),
                                  onExit: ((event) async {
                                    safeSetState(() =>
                                        _model.mouseRegionHovered5 = false);
                                  }),
                                  child: InkWell(
                                    splashColor: const Color(0x4D24B8C2),
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: const Color(0x2624B8C2),
                                    onTap: () async {
                                      context.goNamed(
                                        CkdWidget.routeName,
                                        extra: <String, dynamic>{
                                          '__transition_info__': TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 350),
                                          ),
                                        },
                                      );
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 250),
                                      curve: Curves.easeOutCubic,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: valueOrDefault<Color>(
                                          widget!.selet == 5
                                              ? Color(0x3324B8C2)
                                              : Color(0x7FFFFFFF),
                                          Color(0x00FFFFFF),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        border: Border.all(
                                          color: valueOrDefault<Color>(
                                            _model.mouseRegionHovered5 == true
                                                ? Color(0x3224B8C2)
                                                : Color(0x00FFFFFF),
                                            Color(0x00FFFFFF),
                                          ),
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 5.0,
                                            sigmaY: 5.0,
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 6.0, 12.0, 6.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      widget!.selet == 5
                                                          ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/tvs8idm6s818/icon1a.png'
                                                          : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ng147au2vg2g/icon1.png',
                                                    ),
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'ไตเรื้อรัง',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .ibmPlexSansThaiLooped(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              widget!.selet == 5
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 8.0)),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 8.0)),
                            ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
