import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'strokemap_witget_model.dart';
export 'strokemap_witget_model.dart';

class StrokemapWitgetWidget extends StatefulWidget {
  const StrokemapWitgetWidget({
    super.key,
    required this.topFirst,
    required this.topSec,
    required this.topThird,
    required this.midFirst,
    required this.midSec,
    required this.midThird,
    required this.botFirst,
    required this.botSec,
    required this.botThird,
  });

  final int? topFirst;
  final int? topSec;
  final int? topThird;
  final int? midFirst;
  final int? midSec;
  final int? midThird;
  final int? botFirst;
  final int? botSec;
  final int? botThird;

  @override
  State<StrokemapWitgetWidget> createState() => _StrokemapWitgetWidgetState();
}

class _StrokemapWitgetWidgetState extends State<StrokemapWitgetWidget> {
  late StrokemapWitgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StrokemapWitgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(34.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Heat Map ความเสียงต่อการเกิด Stroke',
              maxLines: 1,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    font: GoogleFonts.ibmPlexSansThaiLooped(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 140.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'ความดันล่างต่ำ < 60',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts
                                                .ibmPlexSansThaiLooped(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'ความดันล่างปกติ 60-90 ',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts
                                                .ibmPlexSansThaiLooped(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  height: 100.0,
                                  decoration: const BoxDecoration(),
                                  child: Align(
                                    alignment:
                                        const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'ความดันล่างสูง >= 90',
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts
                                                .ibmPlexSansThaiLooped(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 8.0))
                          .addToStart(const SizedBox(height: 24.0)),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ความดันบนต่ำ < 90',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: () {
                                          if (widget.topFirst! <= 500) {
                                            return const Color(0xFFF3E7E7);
                                          } else if (widget.topFirst! <= 2600) {
                                            return const Color(0xFFE1C2C4);
                                          } else if (widget.topFirst! <= 5100) {
                                            return const Color(0xFFCF9DA1);
                                          } else if (widget.topFirst! <= 7600) {
                                            return const Color(0xFFBC787E);
                                          } else if (widget.topFirst! <=
                                              10100) {
                                            return const Color(0xFF890E12);
                                          } else if (widget.topFirst! <=
                                              12600) {
                                            return const Color(0xFF7B0D10);
                                          } else if (widget.topFirst! <=
                                              15100) {
                                            return const Color(0xFF6D0B0E);
                                          } else if (widget.topFirst! <=
                                              17600) {
                                            return const Color(0xFF5F0A0C);
                                          } else if (widget.topFirst! >=
                                              19600) {
                                            return const Color(0xFF51080A);
                                          } else if (widget.topFirst! >= 0) {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          } else {
                                            return const Color(0x00000000);
                                          }
                                        }(),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(34.0),
                                        ),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            formatNumber(
                                              widget.topFirst,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                            ),
                                            '1',
                                          ),
                                          maxLines: 1,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts
                                                    .ibmPlexSansThaiLooped(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color: valueOrDefault<Color>(
                                                  widget.topFirst! >= 15100
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.midFirst! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.midFirst! <=
                                                2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.midFirst! <=
                                                5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.midFirst! <=
                                                7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.midFirst! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.midFirst! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.midFirst! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.midFirst! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.midFirst! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.midFirst! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.midFirst,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '4',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.midFirst! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.botFirst! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.botFirst! <=
                                                2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.botFirst! <=
                                                5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.botFirst! <=
                                                7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.botFirst! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.botFirst! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.botFirst! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.botFirst! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.botFirst! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.botFirst! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(34.0),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.botFirst,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '7',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.botFirst! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ความดันบนปกติ 90-120',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.topSec! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.topSec! <= 2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.topSec! <= 5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.topSec! <= 7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.topSec! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.topSec! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.topSec! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.topSec! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.topSec! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.topSec! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.topSec,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '2',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.topSec! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.midSec! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.midSec! <= 2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.midSec! <= 5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.midSec! <= 7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.midSec! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.midSec! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.midSec! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.midSec! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.midSec! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.midSec! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.midSec,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '5',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.midSec! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.botSec! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.botSec! <= 2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.botSec! <= 5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.botSec! <= 7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.botSec! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.botSec! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.botSec! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.botSec! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.botSec! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.botSec! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.botSec,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '8',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.botSec! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'ความดันบนสูง >= 140',
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.topThird! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.topThird! <=
                                                2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.topThird! <=
                                                5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.topThird! <=
                                                7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.topThird! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.topThird! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.topThird! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.topThird! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.topThird! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.topThird! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(34.0),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.topThird,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '3',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.topThird! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.midThird! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.midThird! <=
                                                2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.midThird! <=
                                                5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.midThird! <=
                                                7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.midThird! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.midThird! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.midThird! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.midThird! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.midThird! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.midThird! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.midThird,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '6',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.midThird! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (widget.botThird! <= 500) {
                                              return const Color(0xFFF3E7E7);
                                            } else if (widget.botThird! <=
                                                2600) {
                                              return const Color(0xFFE1C2C4);
                                            } else if (widget.botThird! <=
                                                5100) {
                                              return const Color(0xFFCF9DA1);
                                            } else if (widget.botThird! <=
                                                7600) {
                                              return const Color(0xFFBC787E);
                                            } else if (widget.botThird! <=
                                                10100) {
                                              return const Color(0xFF890E12);
                                            } else if (widget.botThird! <=
                                                12600) {
                                              return const Color(0xFF7B0D10);
                                            } else if (widget.botThird! <=
                                                15100) {
                                              return const Color(0xFF6D0B0E);
                                            } else if (widget.botThird! <=
                                                17600) {
                                              return const Color(0xFF5F0A0C);
                                            } else if (widget.botThird! >=
                                                19600) {
                                              return const Color(0xFF51080A);
                                            } else if (widget.botThird! >= 0) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .secondaryBackground;
                                            } else {
                                              return const Color(0x00000000);
                                            }
                                          }(),
                                          borderRadius: const BorderRadius.only(
                                            bottomRight: Radius.circular(34.0),
                                          ),
                                        ),
                                        child: Align(
                                          alignment: const AlignmentDirectional(
                                              0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.botThird,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.periodDecimal,
                                              ),
                                              '9',
                                            ),
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  font: GoogleFonts
                                                      .ibmPlexSansThaiLooped(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                                  color: valueOrDefault<Color>(
                                                    widget.botThird! >= 15100
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(height: 8.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
