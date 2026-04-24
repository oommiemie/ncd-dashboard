import '/flutter_flow/flutter_flow_util.dart';
import '/login/background/background_widget.dart';
import '/index.dart';
import 'splash_widget.dart' show SplashWidget;
import 'package:flutter/material.dart';

class SplashModel extends FlutterFlowModel<SplashWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Background component.
  late BackgroundModel backgroundModel;

  @override
  void initState(BuildContext context) {
    backgroundModel = createModel(context, () => BackgroundModel());
  }

  @override
  void dispose() {
    backgroundModel.dispose();
  }
}
