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
import 'dx_d_m_h_t_pie_chart_widget_model.dart';
export 'dx_d_m_h_t_pie_chart_widget_model.dart';

class DxDMHTPieChartWidgetWidget extends StatefulWidget {
  const DxDMHTPieChartWidgetWidget({super.key});

  @override
  State<DxDMHTPieChartWidgetWidget> createState() =>
      _DxDMHTPieChartWidgetWidgetState();
}

class _DxDMHTPieChartWidgetWidgetState
    extends State<DxDMHTPieChartWidgetWidget> {
  late DxDMHTPieChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DxDMHTPieChartWidgetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.data = [];
      safeSetState(() {});
      _model.addToData(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'Stroke',
        yValue: 4242.0,
      ));
      safeSetState(() {});
      _model.addToData(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'Stemi',
        yValue: 1241.0,
      ));
      safeSetState(() {});
      _model.addToData(u_i_library_3c2hbt_data_schema.DonutChartDataStruct(
        xTitle: 'ckd',
        yValue: 532.0,
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
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2A8CE0), Color(0xFF00447D)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.circular(34.0),
        ),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(1.0, -1.0),
              child: Container(
                width: double.infinity,
                height: 120.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(1.0, 1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                    width: _model.mouseRegionHovered == true ? 120.0 : 100.0,
                    height: _model.mouseRegionHovered == true ? 120.0 : 100.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/jjwoy6ke77kh/HTDM.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'กราฟแสดงผู้ป่วยวินิจฉัยร่วม เบาหวาน + ความดัน (DM + HT)',
                          maxLines: 1,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.ibmPlexSansThaiLooped(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        height:
                            _model.mouseRegionHovered == true ? 230.0 : 215.0,
                        decoration: BoxDecoration(
                          color: Color(0xF2FFFFFF),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: u_i_library_3c2hbt_custom_widgets.DonutChart(
                              width: double.infinity,
                              height: double.infinity,
                              radius: '70',
                              innerRadius: '30',
                              showLabels: true,
                              labelFontSize: 12.0,
                              labelFontColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              labelFormat: 'y',
                              showPercentage: true,
                              showLegend: true,
                              legendFontColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              legendFontSize: 12.0,
                              enableExplode: false,
                              enableSemi: false,
                              chartData: _model.data,
                              chartColors: _model.color,
                              labelPosition: u_i_library_3c2hbt_enums
                                  .ChartDataLabelPosition.outside,
                              legendDirection: u_i_library_3c2hbt_enums
                                  .LegendDirection.right,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
