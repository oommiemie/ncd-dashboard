import '/app_state.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/filter_util.dart';
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
import 'b_m_i_colum_chart_widget_model.dart';
export 'b_m_i_colum_chart_widget_model.dart';

class BMIColumChartWidgetWidget extends StatefulWidget {
  const BMIColumChartWidgetWidget({
    super.key,
    this.label,
    this.subtype,
  });

  final String? label;
  final String? subtype;

  @override
  State<BMIColumChartWidgetWidget> createState() =>
      _BMIColumChartWidgetWidgetState();
}

class _BMIColumChartWidgetWidgetState extends State<BMIColumChartWidgetWidget> {
  late BMIColumChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BMIColumChartWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  void _rebuildChartData() {
    final mult = appStateMultiplier();
    _model.chart = _mockValuesForSubtype(widget.subtype)
        .entries
        .map((e) => u_i_library_3c2hbt_data_schema.ColumnChartDataStruct(
              xTitle: e.key,
              yValue1: e.value * mult,
            ))
        .toList();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  // BMI distribution: 15% / 28% / 35% / 15% / 7% of subtype total.
  Map<String, double> _mockValuesForSubtype(String? subtype) {
    switch (subtype) {
      case 'ischemic': // total 19,600
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 2940.0,
          'ร่างกายสมส่วน': 5490.0,
          'โรคอ้วนระดับที่ 1': 6860.0,
          'โรคอ้วนระดับที่ 2': 2940.0,
          'โรคอ้วนระดับที่ 3': 1370.0,
        };
      case 'hemorrhagic': // total 6,160
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 920.0,
          'ร่างกายสมส่วน': 1730.0,
          'โรคอ้วนระดับที่ 1': 2160.0,
          'โรคอ้วนระดับที่ 2': 920.0,
          'โรคอ้วนระดับที่ 3': 430.0,
        };
      case 'stroke_total': // total 28,000
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 4200.0,
          'ร่างกายสมส่วน': 7840.0,
          'โรคอ้วนระดับที่ 1': 9800.0,
          'โรคอ้วนระดับที่ 2': 4200.0,
          'โรคอ้วนระดับที่ 3': 1960.0,
        };
      case 'ckd_stage3': // total 24,000
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 3600.0,
          'ร่างกายสมส่วน': 6720.0,
          'โรคอ้วนระดับที่ 1': 8400.0,
          'โรคอ้วนระดับที่ 2': 3600.0,
          'โรคอ้วนระดับที่ 3': 1680.0,
        };
      case 'ckd_stage4': // total 10,800
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 1620.0,
          'ร่างกายสมส่วน': 3020.0,
          'โรคอ้วนระดับที่ 1': 3780.0,
          'โรคอ้วนระดับที่ 2': 1620.0,
          'โรคอ้วนระดับที่ 3': 760.0,
        };
      case 'ckd_stage5': // total 4,200
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 630.0,
          'ร่างกายสมส่วน': 1180.0,
          'โรคอ้วนระดับที่ 1': 1470.0,
          'โรคอ้วนระดับที่ 2': 630.0,
          'โรคอ้วนระดับที่ 3': 290.0,
        };
      default:
        return {
          'น้ำหนักต่ำกว่าเกณฑ์': 31441.0,
          'ร่างกายสมส่วน': 53142.0,
          'โรคอ้วนระดับที่ 1': 6242.0,
          'โรคอ้วนระดับที่ 2': 1231.0,
          'โรคอ้วนระดับที่ 3': 2145.0,
        };
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    _rebuildChartData();
    return Container(
      width: double.infinity,
      height: 450.0,
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
              valueOrDefault<String>(
                widget.label,
                'Label',
              ),
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
                child: u_i_library_3c2hbt_custom_widgets.ColumnChart(
                  width: double.infinity,
                  height: double.infinity,
                  seriesNames1: '',
                  seriesNames2: '',
                  columnWidth: 0.8,
                  showLabels: true,
                  labelFontSize: 8.0,
                  labelFontColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: 8.0,
                  axisFontSize: 10.0,
                  axisTitleColor: FlutterFlowTheme.of(context).secondaryText,
                  showLegend: false,
                  tooltipColor: const Color(0xFF026528),
                  tooltipFontColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  chartData: _model.chart,
                  chartColors: _model.color,
                  labelAlignment:
                      u_i_library_3c2hbt_enums.ChartDataLabelAlignment.top,
                ),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
