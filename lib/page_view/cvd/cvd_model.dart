import '/flutter_flow/flutter_flow_util.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';
import '/page_view/widget/c_k_d_b_m_i_colum_chart_widget/c_k_d_b_m_i_colum_chart_widget_widget.dart';
import '/page_view/widget/high_blood_donut_widget/high_blood_donut_widget_widget.dart';
import '/page_view/widget/high_blood_heatmap_witget/high_blood_heatmap_witget_widget.dart';
import '/page_view/widget/patinestroke_lab_hb_a1_c_stack_chart_widget/patinestroke_lab_hb_a1_c_stack_chart_widget_widget.dart';
import '/page_view/widget/strokemap_witget/strokemap_witget_widget.dart';
import 'cvd_widget.dart' show CvdWidget;
import 'package:flutter/material.dart';

class CvdModel extends FlutterFlowModel<CvdWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel1;
  // Model for Strokemap_Witget component.
  late StrokemapWitgetModel strokemapWitgetModel;
  // Model for CKD_BMIColumChart_Widget component.
  late CKDBMIColumChartWidgetModel cKDBMIColumChartWidgetModel;
  // Model for Patinestroke_LabHbA1CStackChart_Widget component.
  late PatinestrokeLabHbA1CStackChartWidgetModel
      patinestrokeLabHbA1CStackChartWidgetModel1;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel2;
  // Model for HighBloodHeatmap_Witget component.
  late HighBloodHeatmapWitgetModel highBloodHeatmapWitgetModel1;
  // Model for HighBloodDonut_Widget component.
  late HighBloodDonutWidgetModel highBloodDonutWidgetModel1;
  // Model for Patinestroke_LabHbA1CStackChart_Widget component.
  late PatinestrokeLabHbA1CStackChartWidgetModel
      patinestrokeLabHbA1CStackChartWidgetModel2;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel3;
  // Model for HighBloodHeatmap_Witget component.
  late HighBloodHeatmapWitgetModel highBloodHeatmapWitgetModel2;
  // Model for HighBloodDonut_Widget component.
  late HighBloodDonutWidgetModel highBloodDonutWidgetModel2;
  // Model for Patinestroke_LabHbA1CStackChart_Widget component.
  late PatinestrokeLabHbA1CStackChartWidgetModel
      patinestrokeLabHbA1CStackChartWidgetModel3;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel4;
  // Model for HighBloodHeatmap_Witget component.
  late HighBloodHeatmapWitgetModel highBloodHeatmapWitgetModel3;
  // Model for HighBloodDonut_Widget component.
  late HighBloodDonutWidgetModel highBloodDonutWidgetModel3;
  // Model for Patinestroke_LabHbA1CStackChart_Widget component.
  late PatinestrokeLabHbA1CStackChartWidgetModel
      patinestrokeLabHbA1CStackChartWidgetModel4;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    sidebarModel = createModel(context, () => SidebarModel());
    appBarModel = createModel(context, () => AppBarModel());
    buttonmoreModel1 = createModel(context, () => ButtonmoreModel());
    strokemapWitgetModel = createModel(context, () => StrokemapWitgetModel());
    cKDBMIColumChartWidgetModel =
        createModel(context, () => CKDBMIColumChartWidgetModel());
    patinestrokeLabHbA1CStackChartWidgetModel1 =
        createModel(context, () => PatinestrokeLabHbA1CStackChartWidgetModel());
    buttonmoreModel2 = createModel(context, () => ButtonmoreModel());
    highBloodHeatmapWitgetModel1 =
        createModel(context, () => HighBloodHeatmapWitgetModel());
    highBloodDonutWidgetModel1 =
        createModel(context, () => HighBloodDonutWidgetModel());
    patinestrokeLabHbA1CStackChartWidgetModel2 =
        createModel(context, () => PatinestrokeLabHbA1CStackChartWidgetModel());
    buttonmoreModel3 = createModel(context, () => ButtonmoreModel());
    highBloodHeatmapWitgetModel2 =
        createModel(context, () => HighBloodHeatmapWitgetModel());
    highBloodDonutWidgetModel2 =
        createModel(context, () => HighBloodDonutWidgetModel());
    patinestrokeLabHbA1CStackChartWidgetModel3 =
        createModel(context, () => PatinestrokeLabHbA1CStackChartWidgetModel());
    buttonmoreModel4 = createModel(context, () => ButtonmoreModel());
    highBloodHeatmapWitgetModel3 =
        createModel(context, () => HighBloodHeatmapWitgetModel());
    highBloodDonutWidgetModel3 =
        createModel(context, () => HighBloodDonutWidgetModel());
    patinestrokeLabHbA1CStackChartWidgetModel4 =
        createModel(context, () => PatinestrokeLabHbA1CStackChartWidgetModel());
  }

  @override
  void dispose() {
    backgroundModel.dispose();
    sidebarModel.dispose();
    appBarModel.dispose();
    buttonmoreModel1.dispose();
    strokemapWitgetModel.dispose();
    cKDBMIColumChartWidgetModel.dispose();
    patinestrokeLabHbA1CStackChartWidgetModel1.dispose();
    buttonmoreModel2.dispose();
    highBloodHeatmapWitgetModel1.dispose();
    highBloodDonutWidgetModel1.dispose();
    patinestrokeLabHbA1CStackChartWidgetModel2.dispose();
    buttonmoreModel3.dispose();
    highBloodHeatmapWitgetModel2.dispose();
    highBloodDonutWidgetModel2.dispose();
    patinestrokeLabHbA1CStackChartWidgetModel3.dispose();
    buttonmoreModel4.dispose();
    highBloodHeatmapWitgetModel3.dispose();
    highBloodDonutWidgetModel3.dispose();
    patinestrokeLabHbA1CStackChartWidgetModel4.dispose();
  }
}
