import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import '/page_view/widget/item_table_patient/item_table_patient_widget.dart';
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
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bar_chart_district_widget_model.dart';
export 'bar_chart_district_widget_model.dart';

class BarChartDistrictWidgetWidget extends StatefulWidget {
  const BarChartDistrictWidgetWidget({super.key});

  @override
  State<BarChartDistrictWidgetWidget> createState() =>
      _BarChartDistrictWidgetWidgetState();
}

class _BarChartDistrictWidgetWidgetState
    extends State<BarChartDistrictWidgetWidget> {
  late BarChartDistrictWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarChartDistrictWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.chart1 = [];
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ถุงลมโป่งพองเรื้อรัง',
            yValue1: 3131.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ความดันโลหิตสูง',
            yValue1: 13131.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ไตวาย',
            yValue1: 41414.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'เบาหวาน',
            yValue1: 1414.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'มะเร็งทุกชนิด',
            yValue1: 3113.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'สุขภาพจิต',
            yValue1: 5214.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'หลอดเลือดสมอง',
            yValue1: 3113.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'หลอดเลือดหัวใจ',
            yValue1: 5232.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ไขมันในเลือดสูง',
            yValue1: 5232.0,
          ));
          safeSetState(() {});
          _model
              .addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ปอดอักเสบจากการสูบบุหรี่ไฟฟ้า',
            yValue1: 5232.0,
          ));
          safeSetState(() {});
        }),
        Future(() async {
          _model.chart2 = [];
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ถุงลมโป่งพองเรื้อรัง',
            yValue1: 31313.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ความดันโลหิตสูง',
            yValue1: 12332.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ไตวาย',
            yValue1: 24524.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'เบาหวาน',
            yValue1: 133313.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'มะเร็งทุกชนิด',
            yValue1: 2424.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'สุขภาพจิต',
            yValue1: 2424.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'หลอดเลือดสมอง',
            yValue1: 2342.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'หลอดเลือดหัวใจ',
            yValue1: 24524.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ไขมันในเลือดสูง',
            yValue1: 24524.0,
          ));
          safeSetState(() {});
          _model
              .addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct(
            xTitle: 'ปอดอักเสบจากการสูบบุหรี่ไฟฟ้า',
            yValue1: 24524.0,
          ));
          safeSetState(() {});
        }),
      ]);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'กราฟแสดงจำนวนผู้ป่วย แบ่งตามกลุ่มโรค',
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
                          color: FlutterFlowTheme.of(context).primaryText,
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
                wrapWithModel(
                  model: _model.buttonmoreModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const ButtonmoreWidget(),
                ),
              ],
            ),
            MasonryGridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return 1;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return 1;
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return 1;
                  } else {
                    return 2;
                  }
                }(),
              ),
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              itemCount: 2,
              padding: const EdgeInsets.fromLTRB(
                0,
                0,
                0,
                0,
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return [
                  () => Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 100.0,
                                sigmaY: 50.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(100.0),
                                  border: Border.all(
                                    color: const Color(0x1AFFFFFF),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.pageview = 1;
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: _model.pageview == 1
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : const Color(0x00000000),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            child: Text(
                                              'จำนวนผู้ป่วย',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts
                                                        .ibmPlexSansThaiLooped(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: _model.pageview == 1
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.pageview = 2;
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: _model.pageview == 2
                                                ? FlutterFlowTheme.of(context)
                                                    .customColor3
                                                : const Color(0x00000000),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 8.0, 16.0, 8.0),
                                            child: Text(
                                              'อัตราผู้ป่วยต่อต่อแสนประชากร',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts
                                                        .ibmPlexSansThaiLooped(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: _model.pageview == 2
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 8.0)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.pageview == 1) {
                                return SizedBox(
                                  width: double.infinity,
                                  height: 490.0,
                                  child: u_i_library_3c2hbt_custom_widgets
                                      .BarStackedChart(
                                    width: double.infinity,
                                    height: 490.0,
                                    seriesName1: 'จำนวนผู้ป่วย',
                                    seriesName2: '',
                                    min: 0.0,
                                    max: 60000.0,
                                    interval: 20000.0,
                                    showLabels: true,
                                    labelFontSize: 8.0,
                                    labelFontColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    axisFontSize: 10.0,
                                    axisRotation: 0,
                                    axisTitleColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    showLegend: false,
                                    legendFontSize: 12.0,
                                    tooltipColor: const Color(0xFF054F8D),
                                    tooltipTextColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    barBorderRadius: 8.0,
                                    chartData: _model.chart1,
                                    chartColor: _model.color,
                                    labelAlignment: u_i_library_3c2hbt_enums
                                        .ChartDataLabelAlignment.auto,
                                  ),
                                );
                              } else if (_model.pageview == 2) {
                                return SizedBox(
                                  width: double.infinity,
                                  height: 490.0,
                                  child: u_i_library_3c2hbt_custom_widgets
                                      .BarStackedChart(
                                    width: double.infinity,
                                    height: 490.0,
                                    seriesName1: 'อัตราผู้ป่วยต่อต่อแสนประชากร',
                                    seriesName2: '',
                                    min: 0.0,
                                    max: 60000.0,
                                    interval: 20000.0,
                                    showLabels: true,
                                    labelFontSize: 8.0,
                                    labelFontColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    axisFontSize: 10.0,
                                    axisRotation: 0,
                                    axisTitleColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    showLegend: false,
                                    legendFontSize: 12.0,
                                    tooltipColor: const Color(0xFF4C0585),
                                    tooltipTextColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    barBorderRadius: 8.0,
                                    chartData: _model.chart2,
                                    chartColor: _model.color2,
                                    labelAlignment: u_i_library_3c2hbt_enums
                                        .ChartDataLabelAlignment.auto,
                                  ),
                                );
                              } else {
                                return const Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [],
                                );
                              }
                            },
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                  () => Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0x80F5F5F5),
                          borderRadius: BorderRadius.circular(34.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x3324B8C2),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'กลุ่มโรค',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts
                                                        .ibmPlexSansThaiLooped(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    color: const Color(0xFF057780),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'จำนวนผู้ป่วย',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: const Color(0xFF057780),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'อัตราผู้ป่วยต่อแสนประชากร',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                                  color: const Color(0xFF057780),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'ถุงลมโป่งพองเรื้อรัง',
                                      num1: 4244.0,
                                      num2: 42424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'ความดันโลหิตสูง',
                                      num1: 4414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'ไตวาย',
                                      num1: 4414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'เบาหวาน',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'มะเร็งทุกชนิด',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'จิตเวชและสารเสพติด',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'หลอดเลือดสมอง',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'หลอดเลือดหัวใจ',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'ไขมันในเลือดสูง',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.itemTablePatientModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const ItemTablePatientWidget(
                                      nameNCD: 'ปอดอักเสบจากการสูบบุหรี่ไฟฟ้า',
                                      num1: 31414.0,
                                      num2: 2424.0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                ][index]();
              },
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
