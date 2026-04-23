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
import 'high_blood14090_donut_widget_model.dart';
export 'high_blood14090_donut_widget_model.dart';

class HighBlood14090DonutWidgetWidget extends StatefulWidget {
  const HighBlood14090DonutWidgetWidget({super.key});

  @override
  State<HighBlood14090DonutWidgetWidget> createState() =>
      _HighBlood14090DonutWidgetWidgetState();
}

class _HighBlood14090DonutWidgetWidgetState
    extends State<HighBlood14090DonutWidgetWidget> {
  late HighBlood14090DonutWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HighBlood14090DonutWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ค่าความดันตัวบบสูงอย่างเดียว',
        yValue: 31434.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ค่าความดันตัวล่างสูงอย่างเดียว',
        yValue: 131312.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ค่าความดันสูงทั้งสองตัว',
        yValue: 23313.0,
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'กราฟแสดงเฉพาะผู้ป่วยที่มีค่าความดันสูง ',
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
              child: Container(
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
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
