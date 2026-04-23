import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/item_select_widget/item_select_widget_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_health_district_model.dart';
export 'select_health_district_model.dart';

class SelectHealthDistrictWidget extends StatefulWidget {
  const SelectHealthDistrictWidget({super.key});

  @override
  State<SelectHealthDistrictWidget> createState() =>
      _SelectHealthDistrictWidgetState();
}

class _SelectHealthDistrictWidgetState extends State<SelectHealthDistrictWidget>
    with TickerProviderStateMixin {
  late SelectHealthDistrictModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectHealthDistrictModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.1, 1.0),
            end: Offset(1.0, 1.0),
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
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
              width: 850.0,
              height: 350.0,
              decoration: BoxDecoration(
                color: Color(0xB2FFFFFF),
                borderRadius: BorderRadius.circular(34.0),
                border: Border.all(
                  color: Color(0xCBFFFFFF),
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'กรองข้อมูลเขตสุขภาพ',
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
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);

                              context.pushNamed(DistrictPageWidget.routeName);
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
                          onEnter: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = true);
                          }),
                          onExit: ((event) async {
                            safeSetState(
                                () => _model.mouseRegionHovered = false);
                          }),
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
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'ทั้งหมด',
                                      select: FFAppState().HealthDistrict,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {
                                        FFAppState().update(() { FFAppState().HealthDistrict = 'ทั้งหมด'; });
                                        safeSetState(() {});

                                        context.pushNamed(
                                            MainPageWidget.routeName);
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 1',
                                      select: FFAppState().HealthDistrict,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {
                                        FFAppState().update(() { FFAppState().HealthDistrict = 'เขตสุขภาพที่ 1'; });
                                        safeSetState(() {});

                                        context.pushNamed(
                                            DistrictPageWidget.routeName);
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 2',
                                      select: FFAppState().HealthDistrict,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {
                                        FFAppState().update(() { FFAppState().HealthDistrict = 'เขตสุขภาพที่ 2'; });
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 3',
                                      select: FFAppState().HealthDistrict,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {
                                        FFAppState().update(() { FFAppState().HealthDistrict = 'เขตสุขภาพที่ 3'; });
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 4',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 5',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 6',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 7',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 8',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 9',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel11,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 10',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel12,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 11',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel13,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 12',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemSelectWidgetModel14,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ItemSelectWidgetWidget(
                                      text: 'เขตสุขภาพที่ 13',
                                      select: '',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textcolor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      action: () async {},
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
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
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'จังหวัด',
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      primary: false,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel15,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'ทั้งหมด',
                                              select: FFAppState().province,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().province =
                                                    'ทั้งหมด';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel16,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'เชียงใหม่',
                                              select: FFAppState().province,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              action: () async {
                                                FFAppState().province =
                                                    'เชียงใหม่';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel17,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'แม่ฮ่องสอน',
                                              select: FFAppState().province,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              action: () async {
                                                FFAppState().province =
                                                    'แม่ฮ่องสอน';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel18,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'ลำปาง',
                                              select: FFAppState().province,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              action: () async {
                                                FFAppState().province = 'ลำปาง';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel19,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'เชียงราย',
                                              select: FFAppState().province,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              action: () async {
                                                FFAppState().province =
                                                    'เชียงราย';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel20,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'น่าน',
                                              select: FFAppState().province,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              textcolor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              action: () async {
                                                FFAppState().province = 'น่าน';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
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
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'อำเภอ',
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel21,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'ทั้งหมด',
                                              select: FFAppState().district,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().district =
                                                    'ทั้งหมด';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel22,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'สันทราย',
                                              select: FFAppState().district,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().district =
                                                    'สันทราย';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel23,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'สารภี',
                                              select: FFAppState().district,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().district = 'สารภี';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel24,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'หางดง',
                                              select: FFAppState().district,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().district = 'หางดง';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel25,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'แม่ริม',
                                              select: FFAppState().district,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().district =
                                                    'แม่ริม';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel26,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'จอมทอง',
                                              select: FFAppState().district,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().district =
                                                    'จอมทอง';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: 240.0,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'หน่วยบริการ',
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
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel27,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'รพ.มหาราชนครเชียงใหม่',
                                              select: FFAppState().Serviceunit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().Serviceunit =
                                                    'รพ.มหาราชนครเชียงใหม่';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel28,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'รพ.นครพิงค์',
                                              select: FFAppState().Serviceunit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().Serviceunit =
                                                    'รพ.นครพิงค์';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel29,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'รพ.สต.หนองหอย',
                                              select: FFAppState().Serviceunit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().Serviceunit =
                                                    'รพ.สต.หนองหอย';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel30,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'รพ.สันทราย',
                                              select: FFAppState().Serviceunit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().Serviceunit =
                                                    'รพ.สันทราย';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itemSelectWidgetModel31,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemSelectWidgetWidget(
                                              text: 'รพ.สต.สันทรายหลวง',
                                              select: FFAppState().Serviceunit,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              action: () async {
                                                FFAppState().Serviceunit =
                                                    'รพ.สต.สันทรายหลวง';
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 8.0)),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
