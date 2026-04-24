import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';
import '/page_view/widget/b_m_i_colum_chart_widget/b_m_i_colum_chart_widget_widget.dart';
import '/page_view/widget/high_blood140_90_donut_widget/high_blood14090_donut_widget_widget.dart';
import '/page_view/widget/high_blood_colum_chart_widget/high_blood_colum_chart_widget_widget.dart';
import '/page_view/widget/high_blood_donut_widget/high_blood_donut_widget_widget.dart';
import '/page_view/widget/high_blood_heatmap_witget/high_blood_heatmap_witget_widget.dart';
import '/page_view/widget/highblood_scatter_chart_widget/highblood_scatter_chart_widget_widget.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pressure_page_model.dart';
export 'pressure_page_model.dart';

class PressurePageWidget extends StatefulWidget {
  const PressurePageWidget({super.key});

  static String routeName = 'PressurePage';
  static String routePath = '/pressurePage';

  @override
  State<PressurePageWidget> createState() => _PressurePageWidgetState();
}

class _PressurePageWidgetState extends State<PressurePageWidget> {
  late PressurePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PressurePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.7,
            child: wrapWithModel(
              model: _model.backgroundModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: Hero(
                tag: 'bg',
                transitionOnUserGestures: true,
                child: Material(
                  color: Colors.transparent,
                  child: BackgroundWidget(),
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) => wrapWithModel(
                  model: _model.sidebarModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: SidebarWidget(
                    selet: 2,
                  ),
                ),
              ),
              Expanded(
                child: _buildPageContent(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPageContent(BuildContext context) {
    return ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    16.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: StickyHeader(
                        overlapHeaders: false,
                        header: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.appBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: Hero(
                                tag: 'appbar',
                                transitionOnUserGestures: true,
                                child: Material(
                                  color: Colors.transparent,
                                  child: AppBarWidget(
                                    filteryear: true,
                                    filterprovince: false,
                                    filtermore: false,
                                    label:
                                        'ผู้ป่วยรับการรักษาโรคความดันโลหิตสูง ',
                                  ),
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 16.0))
                              .around(SizedBox(height: 16.0)),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'ผู้ป่วยที่รับการรักษาโรคความดันโลหิตสูง ',
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.buttonmoreModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ButtonmoreWidget(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(34.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          MasonryGridView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 1;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 1;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 1;
                                                } else {
                                                  return 2;
                                                }
                                              }(),
                                            ),
                                            crossAxisSpacing: 16.0,
                                            mainAxisSpacing: 16.0,
                                            itemCount: 4,
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              0,
                                            ),
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              return [
                                                () => wrapWithModel(
                                                      model: _model
                                                          .highBloodHeatmapWitgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodHeatmapWitgetWidget(
                                                        topFirst: 1223,
                                                        topSec: 3132,
                                                        topThird: 244,
                                                        midFirst: 0,
                                                        midSec: 32442,
                                                        midThird: 2323,
                                                        botFirst: 232,
                                                        botSec: 131,
                                                        botThird: 1331,
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .highBloodDonutWidgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodDonutWidgetWidget(),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .highBloodColumChartWidgetModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแสดงจำนวนผู้ป่วยแบ่งตามจำนวนโรคที่รับการรักษา ',
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .bMIColumChartWidgetModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          BMIColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแสดงจำนวนผู้ป่วย แบ่งตามการคำนวณของค่า BMI',
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'ผู้ป่วยที่รับการรักษาโรคความดันโลหิตสูงเกฑณ์ความดันตัวบนมากกว่าหรือเท่ากับ 140 ความดันตัวล่างมากกว่าหรือเท่ากับ 90',
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.buttonmoreModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ButtonmoreWidget(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(34.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          MasonryGridView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            gridDelegate:
                                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 1;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 1;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 1;
                                                } else {
                                                  return 2;
                                                }
                                              }(),
                                            ),
                                            crossAxisSpacing: 16.0,
                                            mainAxisSpacing: 16.0,
                                            itemCount: 4,
                                            padding: EdgeInsets.fromLTRB(
                                              0,
                                              0,
                                              0,
                                              0,
                                            ),
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              return [
                                                () => wrapWithModel(
                                                      model: _model
                                                          .highbloodScatterChartWidgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighbloodScatterChartWidgetWidget(),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .highBlood14090DonutWidgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBlood14090DonutWidgetWidget(),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .highBloodColumChartWidgetModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแสดงจำนวนผู้ป่วยแบ่งตามจำนวนโรคที่รับการรักษา ',
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .bMIColumChartWidgetModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          BMIColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแท่งแสดงจำนวนผู้ป่วย แบ่งตามการคำนวณของค่า BMI',
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 16.0))
                              .around(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                );
  }
}
