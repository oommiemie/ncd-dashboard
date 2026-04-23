import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'highblood_scatter_chart_widget_widget.dart'
    show HighbloodScatterChartWidgetWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HighbloodScatterChartWidgetModel
    extends FlutterFlowModel<HighbloodScatterChartWidgetWidget> {
  ///  Local state fields for this component.

  List<String> year = ['2564', '2565', '2566', '2567', '2568'];
  void addToYear(String item) => year.add(item);
  void removeFromYear(String item) => year.remove(item);
  void removeAtIndexFromYear(int index) => year.removeAt(index);
  void insertAtIndexInYear(int index, String item) => year.insert(index, item);
  void updateYearAtIndex(int index, Function(String) updateFn) =>
      year[index] = updateFn(year[index]);

  List<double> barchart = [23342.0, 424624.0, 440224.0, 24242.0, 42456.0];
  void addToBarchart(double item) => barchart.add(item);
  void removeFromBarchart(double item) => barchart.remove(item);
  void removeAtIndexFromBarchart(int index) => barchart.removeAt(index);
  void insertAtIndexInBarchart(int index, double item) =>
      barchart.insert(index, item);
  void updateBarchartAtIndex(int index, Function(double) updateFn) =>
      barchart[index] = updateFn(barchart[index]);

  List<double> linechart = [23342.0, 424624.0, 440224.0, 24242.0, 42456.0];
  void addToLinechart(double item) => linechart.add(item);
  void removeFromLinechart(double item) => linechart.remove(item);
  void removeAtIndexFromLinechart(int index) => linechart.removeAt(index);
  void insertAtIndexInLinechart(int index, double item) =>
      linechart.insert(index, item);
  void updateLinechartAtIndex(int index, Function(double) updateFn) =>
      linechart[index] = updateFn(linechart[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
