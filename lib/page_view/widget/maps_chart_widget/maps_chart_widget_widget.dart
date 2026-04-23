import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'maps_chart_widget_model.dart';
export 'maps_chart_widget_model.dart';

class MapsChartWidgetWidget extends StatefulWidget {
  const MapsChartWidgetWidget({super.key});

  @override
  State<MapsChartWidgetWidget> createState() => _MapsChartWidgetWidgetState();
}

class _MapsChartWidgetWidgetState extends State<MapsChartWidgetWidget> {
  late MapsChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapsChartWidgetModel());

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
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.ThailandMapMinimal(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x1AFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4.0,
                        color: Color(0x0D000000),
                        offset: Offset(
                          0.0,
                          0.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: Color(0x1AFFFFFF),
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Text(
                      'แผนที่',
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
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
