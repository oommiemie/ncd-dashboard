import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
import 'c_k_d_b_m_i_colum_chart_widget_model.dart';
export 'c_k_d_b_m_i_colum_chart_widget_model.dart';

class CKDBMIColumChartWidgetWidget extends StatefulWidget {
  const CKDBMIColumChartWidgetWidget({super.key});

  @override
  State<CKDBMIColumChartWidgetWidget> createState() =>
      _CKDBMIColumChartWidgetWidgetState();
}

class _CKDBMIColumChartWidgetWidgetState
    extends State<CKDBMIColumChartWidgetWidget> {
  late CKDBMIColumChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CKDBMIColumChartWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'น้ำหนักตามกว่าเกณฑ์',
        yValue1: 3235.0,
        yValue2: 1353.0,
        yValue3: 555.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'ร่างกายสมส่วน',
        yValue1: 2324.0,
        yValue2: 552.0,
        yValue3: 129.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'โรคอ้วนระดับที่ 1',
        yValue1: 2334.0,
        yValue2: 133.0,
        yValue3: 145.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'โรคอ้วนระดับที่ 2',
        yValue1: 2343.0,
        yValue2: 521.0,
        yValue3: 956.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'โรคอ้วนระดับที่ 3',
        yValue1: 1230.0,
        yValue2: 475.0,
        yValue3: 1235.0,
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
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
                    'กราฟแสดงจำนวนผู้ป่วย แบ่งตามการคำนวณของค่า BMI',
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
              ],
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: u_i_library_3c2hbt_custom_widgets.ColumnStackedChart(
                  width: double.infinity,
                  height: double.infinity,
                  max: 5000.0,
                  interval: 1000.0,
                  seriesName1: 'CKD stage 3 (N18.3)',
                  seriesName2: 'CKD stage 4 (N18.4)',
                  seriesName3: 'CKD stage 5 (N18.5- N18.6)',
                  showLabels: true,
                  labelFontSize: 8.0,
                  labelFontColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  axisFontSize: 10.0,
                  axisRotation: 0,
                  axisTitleColor: FlutterFlowTheme.of(context).primaryText,
                  showLegend: true,
                  legendFontSize: 12.0,
                  tooltipColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  tooltipTextColor: FlutterFlowTheme.of(context).primaryText,
                  tooltipTextSize: 12.0,
                  columnRadius: 8.0,
                  columnWidth: 0.6,
                  columnSpacing: 0.1,
                  chartData: _model.chart,
                  chartColor: _model.color,
                  labelAlignment:
                      u_i_library_3c2hbt_enums.ChartDataLabelAlignment.middle,
                  legendDirection: u_i_library_3c2hbt_enums.LegendDirection.top,
                  tooltipPosition:
                      u_i_library_3c2hbt_enums.TooltipPosition.pointer,
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
