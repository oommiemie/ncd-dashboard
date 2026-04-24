import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/buttonmore/buttonmore_widget.dart';
import 'dart:ui';
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import 'disease_treatment_count_donut_wiget_widget.dart'
    show DiseaseTreatmentCountDonutWigetWidget;
import 'package:u_i_library_3c2hbt/custom_code/widgets/index.dart'
    as u_i_library_3c2hbt_custom_widgets;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DiseaseTreatmentCountDonutWigetModel
    extends FlutterFlowModel<DiseaseTreatmentCountDonutWigetWidget> {
  ///  Local state fields for this component.

  List<u_i_library_3c2hbt_data_schema.DonutChartDataStruct> chart = [];
  void addToChart(u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      chart.add(item);
  void removeFromChart(
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      chart.remove(item);
  void removeAtIndexFromChart(int index) => chart.removeAt(index);
  void insertAtIndexInChart(int index,
          u_i_library_3c2hbt_data_schema.DonutChartDataStruct item) =>
      chart.insert(index, item);
  void updateChartAtIndex(
          int index,
          Function(u_i_library_3c2hbt_data_schema.DonutChartDataStruct)
              updateFn) =>
      chart[index] = updateFn(chart[index]);

  List<Color> color = [
    const Color(0xff2b7fc7),
    const Color(0xff08a743),
    const Color(0xff932ce5),
    const Color(0xffaf1a1e),
    const Color(0xffd58720),
    const Color(0xffdf41ea)
  ];
  void addToColor(Color item) => color.add(item);
  void removeFromColor(Color item) => color.remove(item);
  void removeAtIndexFromColor(int index) => color.removeAt(index);
  void insertAtIndexInColor(int index, Color item) => color.insert(index, item);
  void updateColorAtIndex(int index, Function(Color) updateFn) =>
      color[index] = updateFn(color[index]);

  ///  State fields for stateful widgets in this component.

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
