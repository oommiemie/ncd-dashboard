import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import 'c_k_d_b_m_i_colum_chart_widget_widget.dart'
    show CKDBMIColumChartWidgetWidget;
import 'package:u_i_library_3c2hbt/custom_code/widgets/index.dart'
    as u_i_library_3c2hbt_custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CKDBMIColumChartWidgetModel
    extends FlutterFlowModel<CKDBMIColumChartWidgetWidget> {
  ///  Local state fields for this component.

  List<u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct> chart = [];
  void addToChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct item) =>
      chart.add(item);
  void removeFromChart(
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct item) =>
      chart.remove(item);
  void removeAtIndexFromChart(int index) => chart.removeAt(index);
  void insertAtIndexInChart(int index,
          u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct item) =>
      chart.insert(index, item);
  void updateChartAtIndex(
          int index,
          Function(u_i_library_3c2hbt_data_schema.ColumnStackedChartDataStruct)
              updateFn) =>
      chart[index] = updateFn(chart[index]);

  List<Color> color = [Color(4281040839), Color(4280596674), Color(4285966277)];
  void addToColor(Color item) => color.add(item);
  void removeFromColor(Color item) => color.remove(item);
  void removeAtIndexFromColor(int index) => color.removeAt(index);
  void insertAtIndexInColor(int index, Color item) => color.insert(index, item);
  void updateColorAtIndex(int index, Function(Color) updateFn) =>
      color[index] = updateFn(color[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
