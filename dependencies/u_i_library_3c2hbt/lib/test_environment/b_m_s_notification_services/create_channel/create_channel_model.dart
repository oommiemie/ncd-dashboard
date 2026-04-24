import '/flutter_flow/flutter_flow_util.dart';
import 'create_channel_widget.dart' show CreateChannelWidget;
import 'package:flutter/material.dart';

class CreateChannelModel extends FlutterFlowModel<CreateChannelWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Create widget.
  ScrollController? createScrollController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Checkbox_Public widget.
  bool? checkboxPublicValue;
  // State field(s) for Checkbox_H1 widget.
  bool? checkboxH1Value;
  // State field(s) for Checkbox_H2 widget.
  bool? checkboxH2Value;
  // State field(s) for Checkbox_Private widget.
  bool? checkboxPrivateValue;

  @override
  void initState(BuildContext context) {
    createScrollController = ScrollController();
  }

  @override
  void dispose() {
    createScrollController?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
