import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_widget.dart' show OtpWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OtpModel extends FlutterFlowModel<OtpWidget> {
  ///  Local state fields for this component.

  bool isTimerEnd = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();

    timerController.dispose();
  }
}
