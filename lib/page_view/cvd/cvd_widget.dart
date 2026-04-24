import '/app_state.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/general/filter_util.dart';
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
import '/page_view/widget/indicator_breakdown_widget/indicator_breakdown_widget_widget.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cvd_model.dart';
export 'cvd_model.dart';

class CvdWidget extends StatefulWidget {
  const CvdWidget({super.key});

  static String routeName = 'CVD';
  static String routePath = '/cvd';

  @override
  State<CvdWidget> createState() => _CvdWidgetState();
}

class _CvdWidgetState extends State<CvdWidget> {
  late CvdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CvdModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Widget _buildSubtypeFilter({
    required List<(String, String)> options,
    required Map<String, int> counts,
    required String selected,
    required ValueChanged<String> onSelected,
    required Color gradientStart,
    required Color gradientEnd,
    required String image,
  }) {
    final maxCount =
        counts.values.fold<int>(0, (p, c) => c > p ? c : p);
    return LayoutBuilder(
      builder: (context, constraints) {
        final isNarrow = constraints.maxWidth < 640;
        final cards = <Widget>[];
        for (var i = 0; i < options.length; i++) {
          final card = _buildSubtypeCard(
            label: options[i].$2,
            count: counts[options[i].$1] ?? 0,
            maxCount: maxCount,
            isActive: options[i].$1 == selected,
            gradientStart: gradientStart,
            gradientEnd: gradientEnd,
            image: image,
            onTap: () => onSelected(options[i].$1),
          );
          cards.add(isNarrow ? card : Expanded(child: card));
          if (i < options.length - 1) {
            cards.add(SizedBox(
              width: isNarrow ? 0 : 14,
              height: isNarrow ? 12 : 0,
            ));
          }
        }
        return Flex(
          direction: isNarrow ? Axis.vertical : Axis.horizontal,
          children: cards,
        );
      },
    );
  }

  Widget _buildSubtypeCard({
    required String label,
    required int count,
    required int maxCount,
    required bool isActive,
    required Color gradientStart,
    required Color gradientEnd,
    required String image,
    required VoidCallback onTap,
  }) {
    final ratio = maxCount > 0 ? count / maxCount : 0.0;
    final formatted = count.toString().replaceAllMapped(
          RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
          (m) => '${m[1]},',
        );
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(24.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          height: 150.0,
          decoration: BoxDecoration(
            gradient: isActive
                ? LinearGradient(
                    colors: [gradientStart, gradientEnd],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(0.0, -1.0),
                    end: const AlignmentDirectional(0.0, 1.0),
                  )
                : null,
            color: isActive
                ? null
                : FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(
              color: isActive
                  ? Colors.transparent
                  : gradientEnd.withOpacity(0.25),
              width: 1.5,
            ),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: gradientEnd.withOpacity(0.35),
                      blurRadius: 18,
                      offset: const Offset(0, 6),
                    ),
                  ]
                : const [],
          ),
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Opacity(
                  opacity: isActive ? 1.0 : 0.35,
                  child: Container(
                    width: 60.0,
                    height: 90.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        image: Image.network(image).image,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.ibmPlexSansThaiLooped(
                        fontWeight: FontWeight.w500,
                        fontStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .fontStyle,
                      ),
                      color: isActive
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : gradientEnd,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  LayoutBuilder(
                    builder: (context, c) => ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Stack(
                        children: [
                          Container(
                            height: 6,
                            width: c.maxWidth,
                            color: isActive
                                ? Colors.white.withOpacity(0.25)
                                : gradientEnd.withOpacity(0.12),
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeOutCubic,
                            height: 6,
                            width: c.maxWidth * ratio,
                            decoration: BoxDecoration(
                              color: isActive ? Colors.white : gradientEnd,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: isActive
                              ? const Color(0xE6FFFFFF)
                              : gradientEnd.withOpacity(0.10),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            14.0, 6.0, 14.0, 6.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: formatted,
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: gradientEnd,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: '  ราย',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBreakdownSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IndicatorBreakdownWidget(
          title: 'ผู้ป่วยที่รับการรักษาโรคหลอดเลือดหัวใจ',
          charts: [
            HighBloodHeatmapWitgetWidget(
              title: 'Heat Map จำนวนผู้ป่วยโรคหลอดเลือดหัวใจ',
              topFirst: scaledInt(840),
              topSec: scaledInt(2160),
              topThird: scaledInt(180),
              midFirst: scaledInt(120),
              midSec: scaledInt(22400),
              midThird: scaledInt(1680),
              botFirst: scaledInt(210),
              botSec: scaledInt(120),
              botThird: scaledInt(1040),
            ),
            const HighBloodDonutWidgetWidget(),
            const BMIColumChartWidgetWidget(
              label: 'กราฟแท่งแสดงจำนวนผู้ป่วย แบ่งตามการคำนวณของค่า BMI',
            ),
            const HighBloodColumChartWidgetWidget(
              label: 'กราฟแสดงจำนวนผู้ป่วยแบ่งตามจำนวนโรคที่รับการรักษา',
            ),
          ],
          gradientStart: const Color(0xFF5B9BD5),
          gradientEnd: const Color(0xFF1E5FBB),
        ),
        const SizedBox(height: 16.0),
        const IndicatorBreakdownWidget(
          title:
              'ผู้ป่วยที่รับการรักษาโรคหลอดเลือดหัวใจ เกณฑ์ความดันตัวบนมากกว่าหรือเท่ากับ 140 ความดันตัวล่างมากกว่าหรือเท่ากับ 90',
          charts: [
            HighbloodScatterChartWidgetWidget(),
            HighBlood14090DonutWidgetWidget(),
            HighBloodColumChartWidgetWidget(
              label: 'กราฟแสดงจำนวนผู้ป่วยแบ่งตามจำนวนโรคที่รับการรักษา',
            ),
            BMIColumChartWidgetWidget(
              label: 'กราฟแท่งแสดงจำนวนผู้ป่วย แบ่งตามการคำนวณของค่า BMI',
            ),
          ],
          gradientStart: Color(0xFF5B9BD5),
          gradientEnd: Color(0xFF1E5FBB),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
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
                    selet: 5,
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
                                    label: 'ผู้ป่วยโรคหลอดเลือดหัวใจ',
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
                            _buildBreakdownSection(),
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
