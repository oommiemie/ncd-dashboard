import '/app_state.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/filter_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';
import '/page_view/widget/b_m_i_colum_chart_widget/b_m_i_colum_chart_widget_widget.dart';
import '/page_view/widget/high_blood_heatmap_witget/high_blood_heatmap_witget_widget.dart';
import '/page_view/widget/patinestroke_lab_hb_a1_c_stack_chart_widget/patinestroke_lab_hb_a1_c_stack_chart_widget_widget.dart';
import '/page_view/widget/stroke_b_m_i_colum_chart_widget/stroke_b_m_i_colum_chart_widget_widget.dart';
import '/page_view/widget/strokemap_witget/strokemap_witget_widget.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stroke_model.dart';
export 'stroke_model.dart';

class StrokeWidget extends StatefulWidget {
  const StrokeWidget({super.key, this.insideShell = false});

  final bool insideShell;

  static String routeName = 'Stroke';
  static String routePath = '/stroke';

  @override
  State<StrokeWidget> createState() => _StrokeWidgetState();
}

class _StrokeWidgetState extends State<StrokeWidget> {
  late StrokeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  String _selectedSubtype = 'stroke_total';

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StrokeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Widget _buildSubtypeFilter({
    required List<(String, String)> options,
    required String selected,
    required ValueChanged<String> onSelected,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
        border: Border.all(color: FlutterFlowTheme.of(context).alternate),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: options.map((opt) {
          final value = opt.$1;
          final label = opt.$2;
          final isActive = value == selected;
          return ChoiceChip(
            selected: isActive,
            onSelected: (_) => onSelected(value),
            label: Text(
              label,
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.ibmPlexSansThaiLooped(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: isActive
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            selectedColor: FlutterFlowTheme.of(context).primary,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
              side: BorderSide(
                color: isActive
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).alternate,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (widget.insideShell) return _buildPageContent(context);
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
              child: const Hero(
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
                  child: const SidebarWidget(
                    selet: 4,
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
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    16.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 0.0, 16.0, 0.0),
                      child: StickyHeader(
                        overlapHeaders: false,
                        header: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.appBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: const Hero(
                                tag: 'appbar',
                                transitionOnUserGestures: true,
                                child: Material(
                                  color: Colors.transparent,
                                  child: AppBarWidget(
                                    filteryear: true,
                                    filterprovince: false,
                                    filtermore: false,
                                    label: 'ผู้ป่วยโรคหลอดเลือดสมอง',
                                  ),
                                ),
                              ),
                            ),
                          ]
                              .divide(const SizedBox(height: 16.0))
                              .around(const SizedBox(height: 16.0)),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _buildSubtypeFilter(
                              options: const [
                                ('stroke_total', 'Stroke (I60-I64)'),
                                ('ischemic', 'Ischemic (I63)'),
                                ('hemorrhagic', 'Hemorrhagic (I60-I62)'),
                              ],
                              selected: _selectedSubtype,
                              onSelected: (v) => safeSetState(
                                  () => _selectedSubtype = v),
                            ),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 350),
                              switchInCurve: Curves.easeOutCubic,
                              switchOutCurve: Curves.easeInCubic,
                              transitionBuilder: (child, animation) =>
                                  FadeTransition(
                                opacity: animation,
                                child: SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(0, 0.04),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                ),
                              ),
                              child: Column(
                                key: ValueKey<String>(_selectedSubtype),
                                mainAxisSize: MainAxisSize.max,
                                children: [
                            if (false)
                              Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'ภาพรวมผู้ป่วยที่รับการรักษาหลอดเลือดสมอง',
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
                                          child: const ButtonmoreWidget(),
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
                                      padding: const EdgeInsets.all(16.0),
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
                                            itemCount: 2,
                                            padding: const EdgeInsets.fromLTRB(
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
                                                          .strokemapWitgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          StrokemapWitgetWidget(
                                                        topFirst: scaledInt(650),
                                                        topSec: scaledInt(380),
                                                        topThird: scaledInt(2400),
                                                        midFirst: scaledInt(420),
                                                        midSec: scaledInt(180),
                                                        midThird: scaledInt(5600),
                                                        botFirst: scaledInt(580),
                                                        botSec: scaledInt(4800),
                                                        botThird: scaledInt(16500),
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .strokeBMIColumChartWidgetModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          const StrokeBMIColumChartWidgetWidget(),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .patinestrokeLabHbA1CStackChartWidgetModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                const PatinestrokeLabHbA1CStackChartWidgetWidget(),
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_selectedSubtype == 'ischemic')
                              Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'ผู้ป่วยหลอดเลือดสมอง Ischemic (I63)',
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
                                          child: const ButtonmoreWidget(),
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
                                      padding: const EdgeInsets.all(16.0),
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
                                            itemCount: 2,
                                            padding: const EdgeInsets.fromLTRB(
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
                                                          .highBloodHeatmapWitgetModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodHeatmapWitgetWidget(
                                                        topFirst: scaledInt(390),
                                                        topSec: scaledInt(200),
                                                        topThird: scaledInt(1570),
                                                        midFirst: scaledInt(290),
                                                        midSec: scaledInt(100),
                                                        midThird: scaledInt(3530),
                                                        botFirst: scaledInt(390),
                                                        botSec: scaledInt(2940),
                                                        botThird: scaledInt(10190),
                                                        title:
                                                            'Heat Map ความเสี่ยงต่อ Ischemic stroke (I63)',
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .bMIColumChartWidgetModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          const BMIColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแท่งแสดงจำนวนผู้ป่วย Ischemic stroke (I63) แบ่งตาม BMI',
                                                        subtype: 'ischemic',
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .patinestrokeLabHbA1CStackChartWidgetModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                const PatinestrokeLabHbA1CStackChartWidgetWidget(
                                              subtype: 'ischemic',
                                              title:
                                                  'Ischemic stroke (I63) ที่มีการตรวจผล HbA1C',
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_selectedSubtype == 'hemorrhagic')
                              Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Hemorrhagic (I60-I62 )',
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
                                          model: _model.buttonmoreModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ButtonmoreWidget(),
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
                                      padding: const EdgeInsets.all(16.0),
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
                                            itemCount: 2,
                                            padding: const EdgeInsets.fromLTRB(
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
                                                          .highBloodHeatmapWitgetModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodHeatmapWitgetWidget(
                                                        topFirst: scaledInt(120),
                                                        topSec: scaledInt(60),
                                                        topThird: scaledInt(490),
                                                        midFirst: scaledInt(90),
                                                        midSec: scaledInt(30),
                                                        midThird: scaledInt(1110),
                                                        botFirst: scaledInt(120),
                                                        botSec: scaledInt(920),
                                                        botThird: scaledInt(3220),
                                                        title:
                                                            'Heat Map ความเสี่ยงต่อ Hemorrhagic stroke (I60-I62)',
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .bMIColumChartWidgetModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          const BMIColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแท่งแสดงจำนวนผู้ป่วย Hemorrhagic stroke (I60-I62) แบ่งตาม BMI',
                                                        subtype: 'hemorrhagic',
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .patinestrokeLabHbA1CStackChartWidgetModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                const PatinestrokeLabHbA1CStackChartWidgetWidget(
                                              subtype: 'hemorrhagic',
                                              title:
                                                  'Hemorrhagic stroke (I60-I62) ที่มีการตรวจผล HbA1C',
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_selectedSubtype == 'stroke_total')
                              Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).secondary
                                  ],
                                  stops: const [0.0, 1.0],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.circular(34.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Stroke (I60-I64)',
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
                                          model: _model.buttonmoreModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ButtonmoreWidget(),
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
                                      padding: const EdgeInsets.all(16.0),
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
                                            itemCount: 2,
                                            padding: const EdgeInsets.fromLTRB(
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
                                                          .highBloodHeatmapWitgetModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          HighBloodHeatmapWitgetWidget(
                                                        topFirst: scaledInt(560),
                                                        topSec: scaledInt(280),
                                                        topThird: scaledInt(2240),
                                                        midFirst: scaledInt(420),
                                                        midSec: scaledInt(140),
                                                        midThird: scaledInt(5040),
                                                        botFirst: scaledInt(560),
                                                        botSec: scaledInt(4200),
                                                        botThird: scaledInt(14560),
                                                        title:
                                                            'Heat Map ความเสี่ยงต่อ Stroke (I60-I64)',
                                                      ),
                                                    ),
                                                () => wrapWithModel(
                                                      model: _model
                                                          .bMIColumChartWidgetModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          const BMIColumChartWidgetWidget(
                                                        label:
                                                            'กราฟแท่งแสดงจำนวนผู้ป่วย Stroke (I60-I64) แบ่งตาม BMI',
                                                        subtype: 'stroke_total',
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .patinestrokeLabHbA1CStackChartWidgetModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child:
                                                const PatinestrokeLabHbA1CStackChartWidgetWidget(
                                              subtype: 'stroke_total',
                                              title:
                                                  'Stroke (I60-I64) ที่มีการตรวจผล HbA1C',
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 16.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                                ],
                              ),
                            ),
                          ]
                              .divide(const SizedBox(height: 16.0))
                              .around(const SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 16.0)),
                );
  }
}
