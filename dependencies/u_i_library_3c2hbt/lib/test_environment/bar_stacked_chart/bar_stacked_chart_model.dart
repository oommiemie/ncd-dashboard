import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bar_stacked_chart_widget.dart' show BarStackedChartWidget;
import 'package:flutter/material.dart';

class BarStackedChartModel extends FlutterFlowModel<BarStackedChartWidget> {
  ///  Local state fields for this page.

  List<BarStackedChartStruct> myBarStackedChart = [];
  void addToMyBarStackedChart(BarStackedChartStruct item) =>
      myBarStackedChart.add(item);
  void removeFromMyBarStackedChart(BarStackedChartStruct item) =>
      myBarStackedChart.remove(item);
  void removeAtIndexFromMyBarStackedChart(int index) =>
      myBarStackedChart.removeAt(index);
  void insertAtIndexInMyBarStackedChart(
          int index, BarStackedChartStruct item) =>
      myBarStackedChart.insert(index, item);
  void updateMyBarStackedChartAtIndex(
          int index, Function(BarStackedChartStruct) updateFn) =>
      myBarStackedChart[index] = updateFn(myBarStackedChart[index]);

  List<Color> chartColor = [];
  void addToChartColor(Color item) => chartColor.add(item);
  void removeFromChartColor(Color item) => chartColor.remove(item);
  void removeAtIndexFromChartColor(int index) => chartColor.removeAt(index);
  void insertAtIndexInChartColor(int index, Color item) =>
      chartColor.insert(index, item);
  void updateChartColorAtIndex(int index, Function(Color) updateFn) =>
      chartColor[index] = updateFn(chartColor[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
