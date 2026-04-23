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
import 'main_page_view_widget.dart' show MainPageViewWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPageViewModel extends FlutterFlowModel<MainPageViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel1;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel2;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel3;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel4;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel5;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel6;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel7;
  // Model for card_Widget component.
  late CardWidgetModel cardWidgetModel8;
  // Model for PatientIncidenceHistogramChart_Widget component.
  late PatientIncidenceHistogramChartWidgetModel
      patientIncidenceHistogramChartWidgetModel;
  // Model for DiseaseTreatmentCountDonut_Wiget component.
  late DiseaseTreatmentCountDonutWigetModel
      diseaseTreatmentCountDonutWigetModel;
  // Model for NCDCasesByGender_Widget component.
  late NCDCasesByGenderWidgetModel nCDCasesByGenderWidgetModel;
  // Model for NCDCasesByHealthRegionColumChart_Widget component.
  late NCDCasesByHealthRegionColumChartWidgetModel
      nCDCasesByHealthRegionColumChartWidgetModel;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel1;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel2;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel3;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel4;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel5;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel6;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel7;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel8;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel9;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel10;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel11;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel12;
  // Model for BarChart_widget component.
  late BarChartWidgetModel barChartWidgetModel13;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    cardWidgetModel1 = createModel(context, () => CardWidgetModel());
    cardWidgetModel2 = createModel(context, () => CardWidgetModel());
    cardWidgetModel3 = createModel(context, () => CardWidgetModel());
    cardWidgetModel4 = createModel(context, () => CardWidgetModel());
    cardWidgetModel5 = createModel(context, () => CardWidgetModel());
    cardWidgetModel6 = createModel(context, () => CardWidgetModel());
    cardWidgetModel7 = createModel(context, () => CardWidgetModel());
    cardWidgetModel8 = createModel(context, () => CardWidgetModel());
    patientIncidenceHistogramChartWidgetModel =
        createModel(context, () => PatientIncidenceHistogramChartWidgetModel());
    diseaseTreatmentCountDonutWigetModel =
        createModel(context, () => DiseaseTreatmentCountDonutWigetModel());
    nCDCasesByGenderWidgetModel =
        createModel(context, () => NCDCasesByGenderWidgetModel());
    nCDCasesByHealthRegionColumChartWidgetModel = createModel(
        context, () => NCDCasesByHealthRegionColumChartWidgetModel());
    barChartWidgetModel1 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel2 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel3 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel4 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel5 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel6 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel7 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel8 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel9 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel10 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel11 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel12 = createModel(context, () => BarChartWidgetModel());
    barChartWidgetModel13 = createModel(context, () => BarChartWidgetModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    cardWidgetModel1.dispose();
    cardWidgetModel2.dispose();
    cardWidgetModel3.dispose();
    cardWidgetModel4.dispose();
    cardWidgetModel5.dispose();
    cardWidgetModel6.dispose();
    cardWidgetModel7.dispose();
    cardWidgetModel8.dispose();
    patientIncidenceHistogramChartWidgetModel.dispose();
    diseaseTreatmentCountDonutWigetModel.dispose();
    nCDCasesByGenderWidgetModel.dispose();
    nCDCasesByHealthRegionColumChartWidgetModel.dispose();
    barChartWidgetModel1.dispose();
    barChartWidgetModel2.dispose();
    barChartWidgetModel3.dispose();
    barChartWidgetModel4.dispose();
    barChartWidgetModel5.dispose();
    barChartWidgetModel6.dispose();
    barChartWidgetModel7.dispose();
    barChartWidgetModel8.dispose();
    barChartWidgetModel9.dispose();
    barChartWidgetModel10.dispose();
    barChartWidgetModel11.dispose();
    barChartWidgetModel12.dispose();
    barChartWidgetModel13.dispose();
  }
}
