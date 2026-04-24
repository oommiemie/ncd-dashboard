import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_table_patient_model.dart';
export 'item_table_patient_model.dart';

class ItemTablePatientWidget extends StatefulWidget {
  const ItemTablePatientWidget({
    super.key,
    this.nameNCD,
    this.num1,
    required this.num2,
  });

  final String? nameNCD;
  final double? num1;
  final double? num2;

  @override
  State<ItemTablePatientWidget> createState() => _ItemTablePatientWidgetState();
}

class _ItemTablePatientWidgetState extends State<ItemTablePatientWidget> {
  late ItemTablePatientModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemTablePatientModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        width: double.infinity,
        height: 48.0,
        decoration: BoxDecoration(
          color: _model.mouseRegionHovered == true
              ? FlutterFlowTheme.of(context).secondaryBackground
              : Color(0x00FFFFFF),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: 100.0,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.nameNCD,
                        'Name',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.ibmPlexSansThaiLooped(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 100.0,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _model.mouseRegionHovered == true
                          ? Color(0x252B7FC7)
                          : Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      child: Text(
                        valueOrDefault<String>(
                          formatNumber(
                            widget!.num1,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                          ),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.ibmPlexSansThaiLooped(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: _model.mouseRegionHovered == true
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 100.0,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _model.mouseRegionHovered == true
                          ? Color(0x277E21C8)
                          : Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      child: Text(
                        valueOrDefault<String>(
                          formatNumber(
                            widget!.num2,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                          ),
                          '0',
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.ibmPlexSansThaiLooped(
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              color: _model.mouseRegionHovered == true
                                  ? FlutterFlowTheme.of(context).customColor3
                                  : FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
