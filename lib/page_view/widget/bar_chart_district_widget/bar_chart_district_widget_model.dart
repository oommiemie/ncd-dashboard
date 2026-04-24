import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import '/page_view/widget/item_table_patient/item_table_patient_widget.dart';
import 'dart:ui';
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import 'bar_chart_district_widget_widget.dart'
    show BarChartDistrictWidgetWidget;
import 'package:u_i_library_3c2hbt/custom_code/widgets/index.dart'
    as u_i_library_3c2hbt_custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BarChartDistrictWidgetModel
    extends FlutterFlowModel<BarChartDistrictWidgetWidget> {
  ///  Local state fields for this component.

  List<u_i_library_3c2hbt_data_schema.BarStackedChartStruct> chart1 = [];
  void addToChart1(u_i_library_3c2hbt_data_schema.BarStackedChartStruct item) =>
      chart1.add(item);
  void removeFromChart1(
          u_i_library_3c2hbt_data_schema.BarStackedChartStruct item) =>
      chart1.remove(item);
  void removeAtIndexFromChart1(int index) => chart1.removeAt(index);
  void insertAtIndexInChart1(int index,
          u_i_library_3c2hbt_data_schema.BarStackedChartStruct item) =>
      chart1.insert(index, item);
  void updateChart1AtIndex(
          int index,
          Function(u_i_library_3c2hbt_data_schema.BarStackedChartStruct)
              updateFn) =>
      chart1[index] = updateFn(chart1[index]);

  List<Color> color = [const Color(0xff2b7fc7)];
  void addToColor(Color item) => color.add(item);
  void removeFromColor(Color item) => color.remove(item);
  void removeAtIndexFromColor(int index) => color.removeAt(index);
  void insertAtIndexInColor(int index, Color item) => color.insert(index, item);
  void updateColorAtIndex(int index, Function(Color) updateFn) =>
      color[index] = updateFn(color[index]);

  int? pageview = 1;

  List<u_i_library_3c2hbt_data_schema.BarStackedChartStruct> chart2 = [];
  void addToChart2(u_i_library_3c2hbt_data_schema.BarStackedChartStruct item) =>
      chart2.add(item);
  void removeFromChart2(
          u_i_library_3c2hbt_data_schema.BarStackedChartStruct item) =>
      chart2.remove(item);
  void removeAtIndexFromChart2(int index) => chart2.removeAt(index);
  void insertAtIndexInChart2(int index,
          u_i_library_3c2hbt_data_schema.BarStackedChartStruct item) =>
      chart2.insert(index, item);
  void updateChart2AtIndex(
          int index,
          Function(u_i_library_3c2hbt_data_schema.BarStackedChartStruct)
              updateFn) =>
      chart2[index] = updateFn(chart2[index]);

  List<Color> color2 = [const Color(0xff520b8b)];
  void addToColor2(Color item) => color2.add(item);
  void removeFromColor2(Color item) => color2.remove(item);
  void removeAtIndexFromColor2(int index) => color2.removeAt(index);
  void insertAtIndexInColor2(int index, Color item) =>
      color2.insert(index, item);
  void updateColor2AtIndex(int index, Function(Color) updateFn) =>
      color2[index] = updateFn(color2[index]);

  ///  State fields for stateful widgets in this component.

  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel1;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel2;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel3;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel4;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel5;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel6;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel7;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel8;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel9;
  // Model for Item_table_patient component.
  late ItemTablePatientModel itemTablePatientModel10;

  @override
  void initState(BuildContext context) {
    buttonmoreModel = createModel(context, () => ButtonmoreModel());
    itemTablePatientModel1 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel2 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel3 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel4 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel5 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel6 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel7 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel8 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel9 =
        createModel(context, () => ItemTablePatientModel());
    itemTablePatientModel10 =
        createModel(context, () => ItemTablePatientModel());
  }

  @override
  void dispose() {
    buttonmoreModel.dispose();
    itemTablePatientModel1.dispose();
    itemTablePatientModel2.dispose();
    itemTablePatientModel3.dispose();
    itemTablePatientModel4.dispose();
    itemTablePatientModel5.dispose();
    itemTablePatientModel6.dispose();
    itemTablePatientModel7.dispose();
    itemTablePatientModel8.dispose();
    itemTablePatientModel9.dispose();
    itemTablePatientModel10.dispose();
  }
}
