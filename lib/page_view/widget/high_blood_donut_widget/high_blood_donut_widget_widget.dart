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
import 'high_blood_donut_widget_model.dart';
export 'high_blood_donut_widget_model.dart';

class HighBloodDonutWidgetWidget extends StatefulWidget {
  const HighBloodDonutWidgetWidget({super.key});

  @override
  State<HighBloodDonutWidgetWidget> createState() =>
      _HighBloodDonutWidgetWidgetState();
}

class _HighBloodDonutWidgetWidgetState
    extends State<HighBloodDonutWidgetWidget> {
  late HighBloodDonutWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HighBloodDonutWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ความดันโลหิตต่ำ : <120 / <80 mmHg',
        yValue: 3144.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ความดันโลหิตปกติ : 120–129 / 80–84 mmHg',
        yValue: 13131.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ความดันโลหิตค่อนข้างสูง : 30–139 / 85–89 mmHg',
        yValue: 23313.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ความดันโลหิตสูงระดับ 1 : 140–159 / 90–99 mmHg',
        yValue: 4232.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ความดันโลหิตสูงระดับ 2 : 160–179 / 100–109 mmHg',
        yValue: 23132.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ความดันโลหิตสูงมาก : ≥180 / ≥110 mmHg',
        yValue: 23213.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'วิกฤตความดันโลหิตสูง : ≥180 / ≥120 mmHg',
        yValue: 23213.0,
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
            Text(
              'กราฟแสดงสัดส่วนจำนวนของผู้ป่วยความดันโลหิตสูง',
              maxLines: 1,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    font: GoogleFonts.ibmPlexSansThaiLooped(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: u_i_library_3c2hbt_custom_widgets.DonutChart(
                  width: double.infinity,
                  height: double.infinity,
                  radius: '100',
                  innerRadius: '60',
                  showLabels: true,
                  labelFontSize: 12.0,
                  showPercentage: true,
                  showLegend: true,
                  legendFontSize: 12.0,
                  enableExplode: false,
                  enableSemi: false,
                  chartData: _model.chart,
                  chartColors: _model.color,
                  legendDirection:
                      u_i_library_3c2hbt_enums.LegendDirection.right,
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
