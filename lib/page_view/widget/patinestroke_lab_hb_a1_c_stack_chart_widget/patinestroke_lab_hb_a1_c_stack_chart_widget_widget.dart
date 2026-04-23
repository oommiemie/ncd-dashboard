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
import 'patinestroke_lab_hb_a1_c_stack_chart_widget_model.dart';
export 'patinestroke_lab_hb_a1_c_stack_chart_widget_model.dart';

class PatinestrokeLabHbA1CStackChartWidgetWidget extends StatefulWidget {
  const PatinestrokeLabHbA1CStackChartWidgetWidget({
    super.key,
    this.subtype,
    this.title,
  });

  final String? subtype;
  final String? title;

  @override
  State<PatinestrokeLabHbA1CStackChartWidgetWidget> createState() =>
      _PatinestrokeLabHbA1CStackChartWidgetWidgetState();
}

class _PatinestrokeLabHbA1CStackChartWidgetWidgetState
    extends State<PatinestrokeLabHbA1CStackChartWidgetWidget> {
  late PatinestrokeLabHbA1CStackChartWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PatinestrokeLabHbA1CStackChartWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  void _rebuildChartData() {
    final mult = appStateMultiplier();
    final values = _mockValuesForSubtype(widget.subtype);
    _model.chart = List.generate(
      values.length,
      (i) => u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct(
        xTitle: 'เขตสุขภาพที่ ${i + 1}',
        yValue1: values[i][0] * mult,
        yValue2: values[i][1] * mult,
      ),
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  // Sum per subtype = subtype total. y1 = HbA1C < 7, y2 = HbA1C >= 7.
  List<List<double>> _mockValuesForSubtype(String? subtype) {
    switch (subtype) {
      case 'ischemic': // total 19,600
        return const [
          [970, 530], [680, 670], [780, 960], [840, 360],
          [1040, 350], [560, 690], [620, 930], [870, 870],
          [1160, 390], [1700, 300], [350, 650], [700, 1040], [950, 640],
        ];
      case 'hemorrhagic': // total 6,160
        return const [
          [300, 160], [210, 210], [250, 300], [270, 110],
          [330, 110], [180, 210], [200, 290], [280, 270],
          [370, 120], [540, 90], [110, 200], [220, 330], [300, 200],
        ];
      case 'stroke_total': // total 28,000
        return const [
          [1380, 750], [970, 960], [1120, 1370], [1200, 510],
          [1490, 500], [810, 980], [880, 1330], [1250, 1240],
          [1660, 550], [2430, 430], [500, 930], [1000, 1490], [1360, 910],
        ];
      case 'ckd_stage3': // total 24,000
        return const [
          [1180, 630], [830, 830], [960, 1180], [1020, 440],
          [1270, 430], [690, 850], [760, 1140], [1070, 1070],
          [1420, 480], [2080, 370], [430, 790], [860, 1280], [1160, 780],
        ];
      case 'ckd_stage4': // total 10,800
        return const [
          [540, 290], [370, 380], [430, 530], [460, 200],
          [580, 190], [310, 380], [340, 510], [480, 480],
          [640, 210], [940, 160], [190, 360], [380, 580], [520, 350],
        ];
      case 'ckd_stage5': // total 4,200
        return const [
          [220, 110], [140, 150], [170, 200], [180, 80],
          [220, 80], [120, 150], [130, 200], [180, 190],
          [250, 80], [370, 60], [70, 140], [150, 220], [200, 140],
        ];
      default:
        return const [
          [1000, 500], [900, 1500], [1250, 2000], [500, 300],
          [1230, 475], [800, 1000], [982, 2120], [2210, 2300],
          [3210, 900], [3210, 300], [210, 922], [1187, 2143], [2210, 1241],
        ];
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    _rebuildChartData();
    return Container(
      width: double.infinity,
      height: 550.0,
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
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.title ??
                        'ผู้ป่วยโรคหลอดเลือดสมองที่มีการตรวจผล HbA1C',
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
