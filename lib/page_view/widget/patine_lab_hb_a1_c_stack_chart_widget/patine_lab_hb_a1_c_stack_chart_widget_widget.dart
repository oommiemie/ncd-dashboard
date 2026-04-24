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
import 'patine_lab_hb_a1_c_stack_chart_widget_model.dart';
export 'patine_lab_hb_a1_c_stack_chart_widget_model.dart';

class PatineLabHbA1CStackChartWidgetWidget extends StatefulWidget {
  const PatineLabHbA1CStackChartWidgetWidget({super.key});

  @override
  State<PatineLabHbA1CStackChartWidgetWidget> createState() =>
      _PatineLabHbA1CStackChartWidgetWidgetState();
}

class _PatineLabHbA1CStackChartWidgetWidgetState
    extends State<PatineLabHbA1CStackChartWidgetWidget> {
  late PatineLabHbA1CStackChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PatineLabHbA1CStackChartWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 1',
        yValue1: 1000.0,
        yValue2: 500.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตุขภาพที่ 2',
        yValue1: 900.0,
        yValue2: 1500.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 3',
        yValue1: 1250.0,
        yValue2: 2000.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 4',
        yValue1: 500.0,
        yValue2: 300.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 5',
        yValue1: 1230.0,
        yValue2: 475.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 6',
        yValue1: 800.0,
        yValue2: 1000.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 7',
        yValue1: 982.0,
        yValue2: 2120.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 8',
        yValue1: 2210.0,
        yValue2: 2300.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 9',
        yValue1: 3210.0,
        yValue2: 900.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 10',
        yValue1: 3210.0,
        yValue2: 300.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 11',
        yValue1: 210.0,
        yValue2: 922.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 12',
        yValue1: 1187.0,
        yValue2: 2143.0,
      ));
      safeSetState(() {});
      _model.addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ 13',
        yValue1: 2210.0,
        yValue2: 1241.0,
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
      height: 550.0,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'ผู้ป่วยเบาหวานที่มีการตรวจผล HbA1C',
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
                  child: const ButtonmoreWidget(),
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
                  seriesName1: 'จำนวนผลแล็บที่มีค่าน้อยกว่า 7',
                  seriesName2: 'จำนวนผลแล็บที่มีค่าตั้งแต่ 7 ขึ้นไป',
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
