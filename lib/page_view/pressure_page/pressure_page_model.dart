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
import 'pressure_page_widget.dart' show PressurePageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PressurePageModel extends FlutterFlowModel<PressurePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel1;
  // Model for HighBloodHeatmap_Witget component.
  late HighBloodHeatmapWitgetModel highBloodHeatmapWitgetModel;
  // Model for HighBloodDonut_Widget component.
  late HighBloodDonutWidgetModel highBloodDonutWidgetModel;
  // Model for HighBloodColumChart_Widget component.
  late HighBloodColumChartWidgetModel highBloodColumChartWidgetModel1;
  // Model for BMIColumChart_Widget component.
  late BMIColumChartWidgetModel bMIColumChartWidgetModel1;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel2;
  // Model for HighbloodScatterChart_Widget component.
  late HighbloodScatterChartWidgetModel highbloodScatterChartWidgetModel;
  // Model for HighBlood140-90Donut_Widget component.
  late HighBlood14090DonutWidgetModel highBlood14090DonutWidgetModel;
  // Model for HighBloodColumChart_Widget component.
  late HighBloodColumChartWidgetModel highBloodColumChartWidgetModel2;
  // Model for BMIColumChart_Widget component.
  late BMIColumChartWidgetModel bMIColumChartWidgetModel2;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    sidebarModel = createModel(context, () => SidebarModel());
    appBarModel = createModel(context, () => AppBarModel());
    buttonmoreModel1 = createModel(context, () => ButtonmoreModel());
    highBloodHeatmapWitgetModel =
        createModel(context, () => HighBloodHeatmapWitgetModel());
    highBloodDonutWidgetModel =
        createModel(context, () => HighBloodDonutWidgetModel());
    highBloodColumChartWidgetModel1 =
        createModel(context, () => HighBloodColumChartWidgetModel());
    bMIColumChartWidgetModel1 =
        createModel(context, () => BMIColumChartWidgetModel());
    buttonmoreModel2 = createModel(context, () => ButtonmoreModel());
    highbloodScatterChartWidgetModel =
        createModel(context, () => HighbloodScatterChartWidgetModel());
    highBlood14090DonutWidgetModel =
        createModel(context, () => HighBlood14090DonutWidgetModel());
    highBloodColumChartWidgetModel2 =
        createModel(context, () => HighBloodColumChartWidgetModel());
    bMIColumChartWidgetModel2 =
        createModel(context, () => BMIColumChartWidgetModel());
  }

  @override
  void dispose() {
    backgroundModel.dispose();
    sidebarModel.dispose();
    appBarModel.dispose();
    buttonmoreModel1.dispose();
    highBloodHeatmapWitgetModel.dispose();
    highBloodDonutWidgetModel.dispose();
    highBloodColumChartWidgetModel1.dispose();
    bMIColumChartWidgetModel1.dispose();
    buttonmoreModel2.dispose();
    highbloodScatterChartWidgetModel.dispose();
    highBlood14090DonutWidgetModel.dispose();
    highBloodColumChartWidgetModel2.dispose();
    bMIColumChartWidgetModel2.dispose();
  }
}
