import '/flutter_flow/flutter_flow_util.dart';
import 'search_bar_widget.dart' show SearchBarWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SearchBarModel extends FlutterFlowModel<SearchBarWidget> {
  ///  Local state fields for this component.

  double? searchWidth = 0.0;

  bool? isSearched;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late MaskTextInputFormatter textFieldMask;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
