import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';
import '/page_view/widget/patient_diabetes_widget/patient_diabetes_widget_widget.dart';
import '/page_view/widget/patine_lab_hb_a1_c_stack_chart_widget/patine_lab_hb_a1_c_stack_chart_widget_widget.dart';
import 'dart:ui';
import 'diabetes_page_widget.dart' show DiabetesPageWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiabetesPageModel extends FlutterFlowModel<DiabetesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for Patient_Diabetes_Widget component.
  late PatientDiabetesWidgetModel patientDiabetesWidgetModel;
  // Model for Patine_LabHbA1CStackChart_Widget component.
  late PatineLabHbA1CStackChartWidgetModel patineLabHbA1CStackChartWidgetModel;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    sidebarModel = createModel(context, () => SidebarModel());
    appBarModel = createModel(context, () => AppBarModel());
    patientDiabetesWidgetModel =
        createModel(context, () => PatientDiabetesWidgetModel());
    patineLabHbA1CStackChartWidgetModel =
        createModel(context, () => PatineLabHbA1CStackChartWidgetModel());
  }

  @override
  void dispose() {
    backgroundModel.dispose();
    sidebarModel.dispose();
    appBarModel.dispose();
    patientDiabetesWidgetModel.dispose();
    patineLabHbA1CStackChartWidgetModel.dispose();
  }
}
