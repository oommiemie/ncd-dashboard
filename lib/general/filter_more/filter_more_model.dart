import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/button_select_widget/button_select_widget_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'filter_more_widget.dart' show FilterMoreWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FilterMoreModel extends FlutterFlowModel<FilterMoreWidget> {
  ///  Local state fields for this component.

  String? patientType = 'ทั้งหมด';

  String ncdgroup = 'ทั้งหมด';

  String numPatient = 'ทั้งหมด';

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel1;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel2;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel3;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel4;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel5;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel6;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel7;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel8;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel9;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel10;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel11;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel12;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel13;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel14;
  // Model for buttonSelect_widget component.
  late ButtonSelectWidgetModel buttonSelectWidgetModel15;

  @override
  void initState(BuildContext context) {
    buttonSelectWidgetModel1 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel2 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel3 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel4 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel5 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel6 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel7 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel8 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel9 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel10 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel11 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel12 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel13 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel14 =
        createModel(context, () => ButtonSelectWidgetModel());
    buttonSelectWidgetModel15 =
        createModel(context, () => ButtonSelectWidgetModel());
  }

  @override
  void dispose() {
    buttonSelectWidgetModel1.dispose();
    buttonSelectWidgetModel2.dispose();
    buttonSelectWidgetModel3.dispose();
    buttonSelectWidgetModel4.dispose();
    buttonSelectWidgetModel5.dispose();
    buttonSelectWidgetModel6.dispose();
    buttonSelectWidgetModel7.dispose();
    buttonSelectWidgetModel8.dispose();
    buttonSelectWidgetModel9.dispose();
    buttonSelectWidgetModel10.dispose();
    buttonSelectWidgetModel11.dispose();
    buttonSelectWidgetModel12.dispose();
    buttonSelectWidgetModel13.dispose();
    buttonSelectWidgetModel14.dispose();
    buttonSelectWidgetModel15.dispose();
  }
}
