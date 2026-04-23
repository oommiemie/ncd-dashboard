import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'highblood_scatter_chart_widget_model.dart';
export 'highblood_scatter_chart_widget_model.dart';

class HighbloodScatterChartWidgetWidget extends StatefulWidget {
  const HighbloodScatterChartWidgetWidget({super.key});

  @override
  State<HighbloodScatterChartWidgetWidget> createState() =>
      _HighbloodScatterChartWidgetWidgetState();
}

class _HighbloodScatterChartWidgetWidgetState
    extends State<HighbloodScatterChartWidgetWidget> {
  late HighbloodScatterChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HighbloodScatterChartWidgetModel());

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
              'กราฟแสดงส่วนสูงและน้ำหนัก กระจายตัวตามผู้ป่วยแต่ละราย',
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
                child: custom_widgets.ScatterChart(
                  width: double.infinity,
                  height: double.infinity,
                  showLegend: true,
                ),
              ),
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
