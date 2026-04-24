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
import 'b_m_i_dritrict_colum_chart_widget_model.dart';
export 'b_m_i_dritrict_colum_chart_widget_model.dart';

class BMIDritrictColumChartWidgetWidget extends StatefulWidget {
  const BMIDritrictColumChartWidgetWidget({super.key});

  @override
  State<BMIDritrictColumChartWidgetWidget> createState() =>
      _BMIDritrictColumChartWidgetWidgetState();
}

class _BMIDritrictColumChartWidgetWidgetState
    extends State<BMIDritrictColumChartWidgetWidget> {
  late BMIDritrictColumChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BMIDritrictColumChartWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'น้ำหนักต่ำกว่าเกณฑ์',
        yValue1: 31441.0,
        yValue2: 2424.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'ร่างกายสมส่วน',
        yValue1: 53142.0,
        yValue2: 2424.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'โรคอ้วนระดับที่ 1',
        yValue1: 6242.0,
        yValue2: 1313.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'โรคอ้วนระดับที่ 2',
        yValue1: 1231.0,
        yValue2: 4224.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
        xTitle: 'โรคอ้วนระดับที่ 3',
        yValue1: 2145.0,
        yValue2: 2424.0,
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
                child: u_i_library_3c2hbt_custom_widgets.ColumnChart(
                  width: double.infinity,
                  height: double.infinity,
                  seriesNames1: 'จำนวนผู้ป่วย',
                  seriesNames2: 'อัตราผู้ป่วยต่อแสนประชากร',
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
                  tooltipColor: const Color(0xFF026528),
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
