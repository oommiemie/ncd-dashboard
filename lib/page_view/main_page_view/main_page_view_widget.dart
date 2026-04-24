import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/page_view/widget/bar_chart_widget/bar_chart_widget_widget.dart';
import '/page_view/widget/card_widget/card_widget_widget.dart';
import '/page_view/widget/disease_treatment_count_donut_wiget/disease_treatment_count_donut_wiget_widget.dart';
import '/page_view/widget/n_c_d_cases_by_gender_widget/n_c_d_cases_by_gender_widget_widget.dart';
import '/page_view/widget/n_c_d_cases_by_health_region_colum_chart_widget/n_c_d_cases_by_health_region_colum_chart_widget_widget.dart';
import '/page_view/widget/patient_incidence_histogram_chart_widget/patient_incidence_histogram_chart_widget_widget.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_page_view_model.dart';
export 'main_page_view_model.dart';

class MainPageViewWidget extends StatefulWidget {
  const MainPageViewWidget({super.key});

  @override
  State<MainPageViewWidget> createState() => _MainPageViewWidgetState();
}

class _MainPageViewWidgetState extends State<MainPageViewWidget> {
  late MainPageViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(
        0,
        16.0,
        0,
        16.0,
      ),
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: StickyHeader(
            overlapHeaders: false,
            header: wrapWithModel(
              model: _model.appBarModel,
              updateCallback: () => safeSetState(() {}),
              child: const AppBarWidget(
                filteryear: true,
                filterprovince: false,
                filtermore: false,
                label: 'ภาพรวมผู้ป่วยโรคติดต่อไม่เรื้อรัง',
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 8,
                  ),
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  itemCount: 8,
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
                            model: _model.cardWidgetModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'COPD ',
                              num: 1583,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/kpxxt335feb0/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_13_35_25.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor2,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor1,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'ความดันโลหิตสูง',
                              num: 56175,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/ga7u2xx1ghqo/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_15_42_41.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor16,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor15,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'ไตวาย',
                              num: 9324,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/4nzvs374omdx/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_14_47_23.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor8,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor7,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'เบาหวาน',
                              num: 24138,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/co08ze4yxp55/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_15_37_03.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor14,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor13,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'มะเร็งทุกชนิด',
                              num: 2346,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/4c1q2oz6u0zf/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_14_32_55.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor4,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor3,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'สุขภาพจิต',
                              num: 8227,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/1bb4wm739pmr/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_15_26_46.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor12,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor11,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'หลอดเลือดสมอง',
                              num: 4394,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/u9g1m089h668/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_15_01_44.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor10,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor9,
                            ),
                          ),
                      () => wrapWithModel(
                            model: _model.cardWidgetModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: CardWidgetWidget(
                              label: 'หลอดเลือดหัวใจ',
                              num: 2434,
                              image:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/2nzwvhr3d7gu/ChatGPT_Image_16_%E0%B8%95.%E0%B8%84._2568_14_39_14.png',
                              colorBackground1:
                                  FlutterFlowTheme.of(context).customColor6,
                              colorBackground2:
                                  FlutterFlowTheme.of(context).customColor5,
                            ),
                          ),
                    ][index]();
                  },
                ),
                MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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
                                .patientIncidenceHistogramChartWidgetModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const PatientIncidenceHistogramChartWidgetWidget(),
                          ),
                      () => wrapWithModel(
                            model: _model.diseaseTreatmentCountDonutWigetModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const DiseaseTreatmentCountDonutWigetWidget(),
                          ),
                    ][index]();
                  },
                ),
                wrapWithModel(
                  model: _model.nCDCasesByGenderWidgetModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NCDCasesByGenderWidgetWidget(),
                ),
                wrapWithModel(
                  model: _model.nCDCasesByHealthRegionColumChartWidgetModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const NCDCasesByHealthRegionColumChartWidgetWidget(),
                ),
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
                        child: Text(
                          'จำนวนผู้ป่วยโรคติดต่อไม่เรื้อรังตามเขตสุขภาพ',
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
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(34.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: MasonryGridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 16.0,
                            itemCount: 15,
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
                                      model: _model.barChartWidgetModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 24141.0,
                                        label: 'เขตสุขภาพที่ 1',
                                        hypertension: 20000.0,
                                        ckd: 15600.0,
                                        dm: 32302.0,
                                        cancer: 31011.0,
                                        mentalhealth: 33033.0,
                                        stroke: 11013.0,
                                        ischemiheart: 2304.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 23002.0,
                                        label: 'เขตสุขภาพที่ 2',
                                        hypertension: 1130.0,
                                        ckd: 24042.0,
                                        dm: 2204.0,
                                        cancer: 5502.0,
                                        mentalhealth: 3110.0,
                                        stroke: 11034.0,
                                        ischemiheart: 3011.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 24024.0,
                                        label: 'เขตสุขภาพที่ 3',
                                        hypertension: 20012.0,
                                        ckd: 42400.0,
                                        dm: 23304.0,
                                        cancer: 11031.0,
                                        mentalhealth: 4044.0,
                                        stroke: 23005.0,
                                        ischemiheart: 6605.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 5204.0,
                                        label: 'เขตสุขภาพที่ 4',
                                        hypertension: 9550.0,
                                        ckd: 31031.0,
                                        dm: 410314.0,
                                        cancer: 13042.0,
                                        mentalhealth: 130314.0,
                                        stroke: 31204.0,
                                        ischemiheart: 21303.0,
                                      ),
                                    ),
                                () => Container(
                                      width: double.infinity,
                                      height: 350.0,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0x1A75E2FF),
                                            Color(0x32419BF1)
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(34.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/rjk4ei13fhbj/Group_1.png',
                                            width: 350.0,
                                            height: double.infinity,
                                            fit: BoxFit.contain,
                                            alignment: const Alignment(1.0, 0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 34002.0,
                                        label: 'เขตสุขภาพที่ 5',
                                        hypertension: 22034.0,
                                        ckd: 12012.0,
                                        dm: 42304.0,
                                        cancer: 5652.0,
                                        mentalhealth: 42424.0,
                                        stroke: 4202.0,
                                        ischemiheart: 42042.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 3140.0,
                                        label: 'เขตสุขภาพที่ 6',
                                        hypertension: 24021.0,
                                        ckd: 41041.0,
                                        dm: 4202.0,
                                        cancer: 42424.0,
                                        mentalhealth: 241013.0,
                                        stroke: 21041.0,
                                        ischemiheart: 13013.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10000.0,
                                        label: 'เขตสุขภาพที่ 7',
                                        hypertension: 20000.0,
                                        ckd: 15060.0,
                                        dm: 3232.0,
                                        cancer: 31101.0,
                                        mentalhealth: 33033.0,
                                        stroke: 11130.0,
                                        ischemiheart: 2304.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10000.0,
                                        label: 'เขตสุขภาพที่ 8',
                                        hypertension: 20000.0,
                                        ckd: 15600.0,
                                        dm: 32032.0,
                                        cancer: 31110.0,
                                        mentalhealth: 3333.0,
                                        stroke: 11103.0,
                                        ischemiheart: 23004.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10500.0,
                                        label: 'เขตสุขภาพที่ 9',
                                        hypertension: 20900.0,
                                        ckd: 15060.0,
                                        dm: 32032.0,
                                        cancer: 31011.0,
                                        mentalhealth: 33033.0,
                                        stroke: 11103.0,
                                        ischemiheart: 2304.0,
                                      ),
                                    ),
                                () => Container(
                                      width: double.infinity,
                                      height: 350.0,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0x1A75E2FF),
                                            Color(0x32419BF1)
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(0.0, -1.0),
                                          end: AlignmentDirectional(0, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(34.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/u5gh22zgqzw3/ChatGPT_Image_17_%E0%B8%95.%E0%B8%84._2568_11_44_29.png',
                                            width: 350.0,
                                            height: double.infinity,
                                            fit: BoxFit.contain,
                                            alignment: const Alignment(0.0, 0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10080.0,
                                        label: 'เขตสุขภาพที่ 10',
                                        hypertension: 20400.0,
                                        ckd: 15060.0,
                                        dm: 32032.0,
                                        cancer: 31101.0,
                                        mentalhealth: 33303.0,
                                        stroke: 11103.0,
                                        ischemiheart: 23004.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10500.0,
                                        label: 'เขตสุขภาพที่ 11',
                                        hypertension: 20500.0,
                                        ckd: 15560.0,
                                        dm: 30232.0,
                                        cancer: 31011.0,
                                        mentalhealth: 33033.0,
                                        stroke: 11153.0,
                                        ischemiheart: 25034.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel12,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10000.0,
                                        label: 'เขตสุขภาพที่ 12',
                                        hypertension: 20500.0,
                                        ckd: 15060.0,
                                        dm: 32532.0,
                                        cancer: 31011.0,
                                        mentalhealth: 35333.0,
                                        stroke: 11013.0,
                                        ischemiheart: 2304.0,
                                      ),
                                    ),
                                () => wrapWithModel(
                                      model: _model.barChartWidgetModel13,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const BarChartWidgetWidget(
                                        copd: 10400.0,
                                        label: 'เขตสุขภาพที่ 13',
                                        hypertension: 20000.0,
                                        ckd: 15600.0,
                                        dm: 32532.0,
                                        cancer: 31011.0,
                                        mentalhealth: 33033.0,
                                        stroke: 11103.0,
                                        ischemiheart: 20034.0,
                                      ),
                                    ),
                              ][index]();
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 16.0)).around(const SizedBox(height: 16.0)),
            ),
          ),
        ),
      ].divide(const SizedBox(height: 16.0)),
    );
  }
}
