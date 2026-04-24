import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/buttonmore/buttonmore_widget.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'patients_missing_care_widget_model.dart';
export 'patients_missing_care_widget_model.dart';

class PatientsMissingCareWidgetWidget extends StatefulWidget {
  const PatientsMissingCareWidgetWidget({super.key});

  @override
  State<PatientsMissingCareWidgetWidget> createState() =>
      _PatientsMissingCareWidgetWidgetState();
}

class _PatientsMissingCareWidgetWidgetState
    extends State<PatientsMissingCareWidgetWidget> {
  late PatientsMissingCareWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatientsMissingCareWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'ถุงลมโป่งพองเรื้อรัง',
        yValue1: 3424.0,
        yValue2: 2223.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'ความดันโลหิตสูง',
        yValue1: 4314.0,
        yValue2: 2313.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'ไตวาย',
        yValue1: 4242.0,
        yValue2: 950.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เบาหวาน',
        yValue1: 4231.0,
        yValue2: 2331.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'มะเร็งทุกชนิด',
        yValue1: 3424.0,
        yValue2: 500.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'จิตเวชและสารเสพติด',
        yValue1: 4522.0,
        yValue2: 3113.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'หลอดเลือดสมอง',
        yValue1: 6352.0,
        yValue2: 3131.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'หลอดเลือดหัวใจ',
        yValue1: 4131.0,
        yValue2: 3414.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'ปอดอักเสบจากการสูบบุหรี่ไฟฟ้า',
        yValue1: 5232.0,
        yValue2: 2131.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'ไขมันในเลือดสูง',
        yValue1: 3134.0,
        yValue2: 800.0,
      ));
      safeSetState(() {});
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
      height: 470.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'กราฟแท่งแสดงผู้ป่วยขาดการรักษา',
                        maxLines: 1,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.info,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 16.0,
                    ),
                    Text(
                      'โดยแสดงข้อมูลย้อนหลัง 2 ปีนับจากวันที่ปัจจุบัน ${dateTimeFormat("d MMMM y", getCurrentTimestamp)}',
                      maxLines: 1,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.ibmPlexSansThaiLooped(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ].divide(const SizedBox(width: 4.0)),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: u_i_library_3c2hbt_custom_widgets.ColumnChart(
                  width: double.infinity,
                  height: double.infinity,
                  seriesNames1: 'จำนวนผู้ป่วยทั้งหมด',
                  seriesNames2: 'จำนวนผู้ป่วยที่ขาดการรักษา',
                  columnWidth: 0.8,
                  showLabels: true,
                  labelFontSize: 8.0,
                  labelFontColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: 8.0,
                  axisFontSize: 10.0,
                  axisTitleColor: FlutterFlowTheme.of(context).secondaryText,
                  showLegend: true,
                  legendFontSize: 12.0,
                  tooltipColor: const Color(0xFF005158),
                  tooltipFontColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  chartData: _model.chart,
                  chartColors: _model.color,
                  labelAlignment:
                      u_i_library_3c2hbt_enums.ChartDataLabelAlignment.top,
                  legendDirection: u_i_library_3c2hbt_enums.LegendDirection.top,
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
