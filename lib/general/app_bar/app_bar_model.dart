import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/select_health_district/select_health_district_widget.dart';
import '/general/select_year/select_year_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'app_bar_widget.dart' show AppBarWidget;
import 'package:u_i_library_3c2hbt/app_state.dart'
    as u_i_library_3c2hbt_app_state;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppBarModel extends FlutterFlowModel<AppBarWidget> {
  ///  Local state fields for this component.

  bool filterYear = true;

  bool filterProvince = true;

  bool filterMore = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
