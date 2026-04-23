import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';
import '/page_view/widget/b_m_i_dritrict_colum_chart_widget/b_m_i_dritrict_colum_chart_widget_widget.dart';
import '/page_view/widget/bar_chart_district_widget/bar_chart_district_widget_widget.dart';
import '/page_view/widget/district_colum_chart_widget/district_colum_chart_widget_widget.dart';
import '/page_view/widget/dx_d_m_h_t_pie_chart_widget/dx_d_m_h_t_pie_chart_widget_widget.dart';
import '/page_view/widget/dx_d_m_pie_chart_widget/dx_d_m_pie_chart_widget_widget.dart';
import '/page_view/widget/dx_h_t_pie_chart_widget/dx_h_t_pie_chart_widget_widget.dart';
import '/page_view/widget/maps_chart_widget/maps_chart_widget_widget.dart';
import '/page_view/widget/patine_dristrict_colum_chart_widget/patine_dristrict_colum_chart_widget_widget.dart';
import 'dart:ui';
import 'district_page_widget.dart' show DistrictPageWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DistrictPageModel extends FlutterFlowModel<DistrictPageWidget> {
  ///  Local state fields for this page.

  int? paview = 1;

  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for DxHT_PieChart_Widget component.
  late DxHTPieChartWidgetModel dxHTPieChartWidgetModel;
  // Model for DxDM_PieChart_Widget component.
  late DxDMPieChartWidgetModel dxDMPieChartWidgetModel;
  // Model for DxDMHT_PieChart_Widget component.
  late DxDMHTPieChartWidgetModel dxDMHTPieChartWidgetModel;
  // Model for MapsChart_widget component.
  late MapsChartWidgetModel mapsChartWidgetModel;
  // Model for Patine_DristrictColumChart_Widget component.
  late PatineDristrictColumChartWidgetModel
      patineDristrictColumChartWidgetModel;
  // Model for BarChartDistrict_widget component.
  late BarChartDistrictWidgetModel barChartDistrictWidgetModel;
  // Model for DistrictColumChart_Widget component.
  late DistrictColumChartWidgetModel districtColumChartWidgetModel;
  // Model for BMIDritrictColumChart_Widget component.
  late BMIDritrictColumChartWidgetModel bMIDritrictColumChartWidgetModel;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
    sidebarModel = createModel(context, () => SidebarModel());
    appBarModel = createModel(context, () => AppBarModel());
    dxHTPieChartWidgetModel =
        createModel(context, () => DxHTPieChartWidgetModel());
    dxDMPieChartWidgetModel =
        createModel(context, () => DxDMPieChartWidgetModel());
    dxDMHTPieChartWidgetModel =
        createModel(context, () => DxDMHTPieChartWidgetModel());
    mapsChartWidgetModel = createModel(context, () => MapsChartWidgetModel());
    patineDristrictColumChartWidgetModel =
        createModel(context, () => PatineDristrictColumChartWidgetModel());
    barChartDistrictWidgetModel =
        createModel(context, () => BarChartDistrictWidgetModel());
    districtColumChartWidgetModel =
        createModel(context, () => DistrictColumChartWidgetModel());
    bMIDritrictColumChartWidgetModel =
        createModel(context, () => BMIDritrictColumChartWidgetModel());
    buttonmoreModel = createModel(context, () => ButtonmoreModel());
  }

  @override
  void dispose() {
    backgroundModel.dispose();
    sidebarModel.dispose();
    appBarModel.dispose();
    dxHTPieChartWidgetModel.dispose();
    dxDMPieChartWidgetModel.dispose();
    dxDMHTPieChartWidgetModel.dispose();
    mapsChartWidgetModel.dispose();
    patineDristrictColumChartWidgetModel.dispose();
    barChartDistrictWidgetModel.dispose();
    districtColumChartWidgetModel.dispose();
    bMIDritrictColumChartWidgetModel.dispose();
    buttonmoreModel.dispose();
  }
}
