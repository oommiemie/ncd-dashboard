import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import 'dart:ui';
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import 'dx_h_t_pie_chart_widget_widget.dart' show DxHTPieChartWidgetWidget;
import 'package:u_i_library_3c2hbt/custom_code/widgets/index.dart'
    as u_i_library_3c2hbt_custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DxHTPieChartWidgetModel
    extends FlutterFlowModel<DxHTPieChartWidgetWidget> {
  ///  Local state fields for this component.

  List<u_i_library_3c2hbt_data_schema.DonutChartDataStruct> data = [];
  void addToData(u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      data.add(item);
  void removeFromData(
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(int index,
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      data.insert(index, item);
  void updateDataAtIndex(
          int index,
          Function(u_i_library_3c2hbt_data_schema.DonutChartDataStruct)
              updateFn) =>
      data[index] = updateFn(data[index]);

  List<Color> color = [
    const Color(0xff2b7fc7),
    const Color(0xff7e21c8),
    const Color(0xff2ea562),
    const Color(0xfff0a934),
    const Color(0xffaf4a4c)
  ];
  void addToColor(Color item) => color.add(item);
  void removeFromColor(Color item) => color.remove(item);
  void removeAtIndexFromColor(int index) => color.removeAt(index);
  void insertAtIndexInColor(int index, Color item) => color.insert(index, item);
  void updateColorAtIndex(int index, Function(Color) updateFn) =>
      color[index] = updateFn(color[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for buttonmore component.
  late ButtonmoreModel buttonmoreModel;

  @override
  void initState(BuildContext context) {
    buttonmoreModel = createModel(context, () => ButtonmoreModel());
  }

  @override
  void dispose() {
    buttonmoreModel.dispose();
  }
}
