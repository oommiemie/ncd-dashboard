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
import 'disease_treatment_count_donut_wiget_model.dart';
export 'disease_treatment_count_donut_wiget_model.dart';

class DiseaseTreatmentCountDonutWigetWidget extends StatefulWidget {
  const DiseaseTreatmentCountDonutWigetWidget({super.key});

  @override
  State<DiseaseTreatmentCountDonutWigetWidget> createState() =>
      _DiseaseTreatmentCountDonutWigetWidgetState();
}

class _DiseaseTreatmentCountDonutWigetWidgetState
    extends State<DiseaseTreatmentCountDonutWigetWidget> {
  late DiseaseTreatmentCountDonutWigetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiseaseTreatmentCountDonutWigetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.chart = [];
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'จำนวน 1 โรค',
        yValue: 3144.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'จำนวน 2 โรค',
        yValue: 1233.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'จำนวน 3 โรค',
        yValue: 2331.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'จำนวน 4 โรค',
        yValue: 4232.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'จำนวน 5 โรค',
        yValue: 2313.0,
      ));
      safeSetState(() {});
      _model.addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'จำนวน 6 โรค',
        yValue: 2313.0,
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
                    'กราฟแสดงจำนวนโรคที่ที่ผู้ป่วยเข้ารับการรักษา',
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
                  labelPosition:
                      u_i_library_3c2hbt_enums.ChartDataLabelPosition.outside,
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
