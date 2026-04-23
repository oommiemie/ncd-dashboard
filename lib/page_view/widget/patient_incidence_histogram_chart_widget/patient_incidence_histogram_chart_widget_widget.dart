import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'patient_incidence_histogram_chart_widget_model.dart';
export 'patient_incidence_histogram_chart_widget_model.dart';

class PatientIncidenceHistogramChartWidgetWidget extends StatefulWidget {
  const PatientIncidenceHistogramChartWidgetWidget({super.key});

  @override
  State<PatientIncidenceHistogramChartWidgetWidget> createState() =>
      _PatientIncidenceHistogramChartWidgetWidgetState();
}

class _PatientIncidenceHistogramChartWidgetWidgetState
    extends State<PatientIncidenceHistogramChartWidgetWidget> {
  late PatientIncidenceHistogramChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PatientIncidenceHistogramChartWidgetModel());

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
                    'กราฟเปรียบเทียบจำนวนผู้ป่วยในแต่ละปี',
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
                child: custom_widgets.HistogramChart(
                  width: double.infinity,
                  height: double.infinity,
                  title: 'chart',
                  barColor: FlutterFlowTheme.of(context).secondary,
                  lineColor: FlutterFlowTheme.of(context).customColor4,
                  years: _model.year,
                  barValues: _model.barchart,
                  lineValues: _model.linechart,
                  lineScaleFactor: 2.0,
                  showChartTitle: false,
                  barSeriesName: 'จำนวนผู้ป่วย',
                  barCornerRadius: 12.0,
                  showBarDataLabels: true,
                  lineSeriesName: 'อัตราประชากรต่อแสนคน',
                  lineWidth: 2.0,
                  useSpline: true,
                  splineTension: 0.3,
                  showLineDataLabels: true,
                  xAxisLabelFontSize: 10.0,
                  yAxisLabelFontSize: 10.0,
                  xAxisLabelColor: FlutterFlowTheme.of(context).secondaryText,
                  yAxisLabelColor: FlutterFlowTheme.of(context).secondaryText,
                  showLegend: true,
                  legendPosition: 'top',
                  tooltipBgColor: FlutterFlowTheme.of(context).primary,
                  tooltipTextColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  tooltipFontSize: 12.0,
                  barDataLabelFontSize: 8.0,
                  barDataLabelColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  lineDataLabelFontSize: 8.0,
                  lineDataLabelColor: FlutterFlowTheme.of(context).primaryText,
                  useSecondaryYAxis: false,
                  secondaryAxisLabelFontSize: 10.0,
                  secondaryAxisLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
              ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
