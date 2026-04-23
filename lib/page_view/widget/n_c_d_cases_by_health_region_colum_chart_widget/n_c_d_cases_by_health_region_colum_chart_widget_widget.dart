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
import 'n_c_d_cases_by_health_region_colum_chart_widget_model.dart';
export 'n_c_d_cases_by_health_region_colum_chart_widget_model.dart';

class NCDCasesByHealthRegionColumChartWidgetWidget extends StatefulWidget {
  const NCDCasesByHealthRegionColumChartWidgetWidget({super.key});

  @override
  State<NCDCasesByHealthRegionColumChartWidgetWidget> createState() =>
      _NCDCasesByHealthRegionColumChartWidgetWidgetState();
}

class _NCDCasesByHealthRegionColumChartWidgetWidgetState
    extends State<NCDCasesByHealthRegionColumChartWidgetWidget> {
  late NCDCasesByHealthRegionColumChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => NCDCasesByHealthRegionColumChartWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 1',
        yValue1: 2123.0,
        yValue2: 1223.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 2',
        yValue1: 4314.0,
        yValue2: 1313.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 3',
        yValue1: 4242.0,
        yValue2: 3444.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 4',
        yValue1: 4231.0,
        yValue2: 2331.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 5',
        yValue1: 2424.0,
        yValue2: 3131.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 6',
        yValue1: 4522.0,
        yValue2: 3113.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 7',
        yValue1: 6352.0,
        yValue2: 3131.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 8',
        yValue1: 4131.0,
        yValue2: 3414.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 9',
        yValue1: 1233.0,
        yValue2: 2131.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 10',
        yValue1: 1314.0,
        yValue2: 4222.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 11',
        yValue1: 3234.0,
        yValue2: 1313.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 12',
        yValue1: 2111.0,
        yValue2: 4221.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 13',
        yValue1: 7331.0,
        yValue2: 2234.0,
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
      height: 450.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'กราฟแท่งแสดงจำนวนของผู้ป่วย(ตามเขตสุขภาพ)',
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
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
                  child: ButtonmoreWidget(),
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: u_i_library_3c2hbt_custom_widgets.ColumnChart(
                  width: double.infinity,
                  height: double.infinity,
                  seriesNames1: 'จำนวนผู้ป่วย',
                  seriesNames2: 'จำนวนผู้ป่วยอัตราต่อแสนคน',
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
                  tooltipColor: Color(0xFF005158),
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
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
