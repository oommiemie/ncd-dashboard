import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stepper_demo_widget.dart' show StepperDemoWidget;
import 'package:flutter/material.dart';

class StepperDemoModel extends FlutterFlowModel<StepperDemoWidget> {
  ///  Local state fields for this page.

  List<ColumnChartDataStruct> chartData = [];
  void addToChartData(ColumnChartDataStruct item) => chartData.add(item);
  void removeFromChartData(ColumnChartDataStruct item) =>
      chartData.remove(item);
  void removeAtIndexFromChartData(int index) => chartData.removeAt(index);
  void insertAtIndexInChartData(int index, ColumnChartDataStruct item) =>
      chartData.insert(index, item);
  void updateChartDataAtIndex(
          int index, Function(ColumnChartDataStruct) updateFn) =>
      chartData[index] = updateFn(chartData[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
