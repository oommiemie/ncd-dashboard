import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/button_select_widget/button_select_widget_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_more_model.dart';
export 'filter_more_model.dart';

class FilterMoreWidget extends StatefulWidget {
  const FilterMoreWidget({super.key});

  @override
  State<FilterMoreWidget> createState() => _FilterMoreWidgetState();
}

class _FilterMoreWidgetState extends State<FilterMoreWidget>
    with TickerProviderStateMixin {
  late FilterMoreModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterMoreModel());

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
              width: 380.0,
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'กรองข้อมูลเพิ่มเติม',
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
                                      ? FlutterFlowTheme.of(context)
                                          .customColor21
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
                                          font:
                                              GoogleFonts.ibmPlexSansThaiLooped(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color:
                                              _model.mouseRegionHovered == true
                                                  ? FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                  : FlutterFlowTheme.of(context)
                                                      .customColor21,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ประเภทผู้ป่วย',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ทั้งหมด',
                                      select: _model.patientType,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      action: () async {
                                        _model.patientType = 'ทั้งหมด';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ผู้ป่วยนอก',
                                      select: _model.patientType,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      action: () async {
                                        _model.patientType = 'ผู้ป่วยนอก';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ผู้ป่วยใน',
                                      select: _model.patientType,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      action: () async {
                                        _model.patientType = 'ผู้ป่วยใน';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'กลุ่มโรค',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ทั้งหมด',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'ทั้งหมด';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'COPD',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'COPD';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ความดันโลหิตสูง',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'ความดันโลหิตสูง';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ไตยวาย',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'ไตยวาย';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'เบาหวาน',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'เบาหวาน';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'มะเร็งทุกชนิด',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'มะเร็งทุกชนิด';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'สุขภาพจิต',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'สุขภาพจิต';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel11,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'หลอดเลือดสมอง',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'หลอดเลือดสมอง';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel12,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'หลอดเลือดหัวใจ',
                                      select: _model.ncdgroup,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      action: () async {
                                        _model.ncdgroup = 'หลอดเลือดหัวใจ';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'จำนวนผู้ป่วย',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Wrap(
                                spacing: 12.0,
                                runSpacing: 12.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel13,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'ทั้งหมด',
                                      select: _model.numPatient,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      action: () async {
                                        _model.numPatient = 'ทั้งหมด';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel14,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'จำนวนผู้ป่วย',
                                      select: _model.numPatient,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      action: () async {
                                        _model.numPatient = 'จำนวนผู้ป่วย';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.buttonSelectWidgetModel15,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonSelectWidgetWidget(
                                      text: 'อัตราผู้ป่วยต่อแสนคน',
                                      select: _model.numPatient,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      action: () async {
                                        _model.numPatient =
                                            'อัตราผู้ป่วยต่อแสนคน';
                                        safeSetState(() {});
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
