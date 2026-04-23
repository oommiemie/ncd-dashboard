import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import 'package:u_i_library_3c2hbt/custom_code/widgets/index.dart'
    as u_i_library_3c2hbt_custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bar_chart_widget_model.dart';
export 'bar_chart_widget_model.dart';

class BarChartWidgetWidget extends StatefulWidget {
  const BarChartWidgetWidget({
    super.key,
    this.label,
    this.copd,
    this.hypertension,
    this.ckd,
    this.dm,
    this.cancer,
    this.mentalhealth,
    this.stroke,
    this.ischemiheart,
    this.evali,
    this.hyperlipidemia,
  });

  final String? label;

  /// COPD
  final double? copd;

  /// ความดันโลหิต
  final double? hypertension;

  /// ไตวาย
  final double? ckd;

  /// เบาหวาน
  final double? dm;

  /// มะเร็ง
  final double? cancer;

  /// สุขภาพจิต
  final double? mentalhealth;

  /// หลอดเลือดสมอง
  final double? stroke;

  /// หลอดเลือดหัวใจ
  final double? ischemiheart;

  /// แต่ละกลุ่มโรค แบ่งตามจังหวัดและอำเภอ
  final double? evali;

  /// ไขมันในเลือดสูง
  final double? hyperlipidemia;

  @override
  State<BarChartWidgetWidget> createState() => _BarChartWidgetWidgetState();
}

class _BarChartWidgetWidgetState extends State<BarChartWidgetWidget>
    with TickerProviderStateMixin {
  late BarChartWidgetModel _model;

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
    _model = createModel(context, () => BarChartWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'ถุงลมโป่งพองเรื้อรัง',
        yValue1: widget!.copd,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'ความดันโลหิตสูง',
        yValue1: widget!.hypertension,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'ไตวาย',
        yValue1: widget!.ckd,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'เบาหวาน',
        yValue1: widget!.dm,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'มะเร็งทุกชนิด',
        yValue1: widget!.cancer,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'สุขภาพจิต',
        yValue1: widget!.mentalhealth,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'หลอดเลือดสมอง',
        yValue1: widget!.stroke,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'หลอดเลือดหัวใจ',
        yValue1: widget!.ischemiheart,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'ปอดอักเสบจากการสูบบุหรี่ไฟฟ้า',
        yValue1: widget!.evali,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
        xTitle: 'ไขมันในเลือดสูง',
        yValue1: widget!.hyperlipidemia,
      ));
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.03, 1.03),
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
      child: Container(
        width: double.infinity,
        height: 350.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: valueOrDefault<Color>(
                _model.mouseRegionHovered == true
                    ? Color(0x19000000)
                    : Color(0x00FFFFFF),
                Color(0x00FFFFFF),
              ),
              offset: Offset(
                0.0,
                0.0,
              ),
              spreadRadius: 2.0,
            )
          ],
          borderRadius: BorderRadius.circular(34.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              _model.mouseRegionHovered == true
                  ? FlutterFlowTheme.of(context).secondaryBackground
                  : FlutterFlowTheme.of(context).alternate,
              FlutterFlowTheme.of(context).alternate,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      valueOrDefault<Color>(
                        _model.mouseRegionHovered == true
                            ? Color(0x1949D0D9)
                            : Colors.transparent,
                        Color(0x00FFFFFF),
                      ),
                      valueOrDefault<Color>(
                        _model.mouseRegionHovered == true
                            ? Color(0x1A24B8C2)
                            : Colors.transparent,
                        Color(0x00FFFFFF),
                      )
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 6.0, 16.0, 6.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget!.label,
                      'label',
                    ),
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.ibmPlexSansThaiLooped(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: valueOrDefault<Color>(
                            _model.mouseRegionHovered == true
                                ? Color(0xFF038993)
                                : FlutterFlowTheme.of(context).primaryText,
                            FlutterFlowTheme.of(context).primaryText,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: u_i_library_3c2hbt_custom_widgets.BarStackedChart(
                    width: double.infinity,
                    height: double.infinity,
                    min: 0.0,
                    max: 60000.0,
                    interval: 20000.0,
                    showLabels: true,
                    labelFontSize: 8.0,
                    labelFontColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    axisFontSize: 10.0,
                    axisRotation: 0,
                    axisTitleColor: FlutterFlowTheme.of(context).secondaryText,
                    showLegend: false,
                    tooltipColor: Color(0xFF03437A),
                    tooltipTextColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    barBorderRadius: 8.0,
                    chartData: _model.chart,
                    chartColor: _model.color,
                    labelAlignment:
                        u_i_library_3c2hbt_enums.ChartDataLabelAlignment.auto,
                  ),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ).animateOnActionTrigger(
          animationsMap['containerOnActionTriggerAnimation']!,
          hasBeenTriggered: hasContainerTriggered),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
        if (animationsMap['containerOnActionTriggerAnimation'] != null) {
          safeSetState(() => hasContainerTriggered = true);
          SchedulerBinding.instance.addPostFrameCallback((_) async =>
              animationsMap['containerOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0));
        }
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
        if (animationsMap['containerOnActionTriggerAnimation'] != null) {
          animationsMap['containerOnActionTriggerAnimation']!
              .controller
              .reverse();
        }
      }),
    );
  }
}
