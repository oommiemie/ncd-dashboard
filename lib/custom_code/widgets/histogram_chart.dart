// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import "package:u_i_library_3c2hbt/backend/schema/structs/index.dart"
    as u_i_library_3c2hbt_data_schema;
import "package:u_i_library_3c2hbt/backend/schema/enums/enums.dart"
    as u_i_library_3c2hbt_enums;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class _ComboPoint {
  final String year;
  final double bar;
  final double line;
  const _ComboPoint(this.year, this.bar, this.line);
}

class HistogramChart extends StatefulWidget {
  const HistogramChart({
    Key? key,

    // ── ทั่วไป ─────────────────────────────────
    this.title,
    this.showChartTitle,
    this.years,
    this.width,
    this.height,
    this.xLabelRotation,

    // ── กราฟแท่ง (Bar) ─────────────────────────
    this.barSeriesName,
    this.barValues,
    this.barColor,
    this.barCornerRadius,
    this.showBarDataLabels,
    this.barDataLabelFontSize,
    this.barDataLabelColor,

    // ── กราฟเส้น (Line) ────────────────────────
    this.lineSeriesName,
    this.lineValues,
    this.lineColor,
    this.lineWidth,
    this.useSpline,
    this.splineTension,
    this.showLineDataLabels,
    this.lineScaleFactor, // (legacy: ใช้เมื่อปิดแกนขวา)
    this.lineDataLabelFontSize,
    this.lineDataLabelColor,

    // ── แกน X,Y ───────────────────────────────
    this.xAxisLabelFontSize,
    this.yAxisLabelFontSize,
    this.xAxisLabelColor,
    this.yAxisLabelColor,

    // ── Legend ────────────────────────────────
    this.showLegend,
    this.legendPosition,

    // ── Tooltip ───────────────────────────────
    this.tooltipBgColor,
    this.tooltipTextColor,
    this.tooltipFontSize,

    // ── Secondary Y-Axis (ใหม่) ───────────────
    this.useSecondaryYAxis, // (มีไว้เผื่ออนาคต แต่ในไฟล์นี้จะบังคับใช้แกนขวาเสมอ)
    this.secondaryYAxisTitle,
    this.secondaryYAxisMin,
    this.secondaryYAxisMax,
    this.secondaryYAxisInterval,
    this.secondaryAxisLabelFontSize,
    this.secondaryAxisLabelColor,
  }) : super(key: key);

  // ── ทั่วไป ─────────────────────────────────
  final String? title;
  final bool? showChartTitle;
  final List<String>? years;
  final double? width;
  final double? height;
  final int? xLabelRotation;

  // ── กราฟแท่ง (Bar) ─────────────────────────
  final String? barSeriesName;
  final List<double>? barValues;
  final Color? barColor;
  final double? barCornerRadius;
  final bool? showBarDataLabels;
  final double? barDataLabelFontSize;
  final Color? barDataLabelColor;

  // ── กราฟเส้น (Line) ────────────────────────
  final String? lineSeriesName;
  final List<double>? lineValues;
  final Color? lineColor;
  final double? lineWidth;
  final bool? useSpline;
  final double? splineTension;
  final bool? showLineDataLabels;
  final double? lineScaleFactor; // (legacy)
  final double? lineDataLabelFontSize;
  final Color? lineDataLabelColor;

  // ── แกน X,Y ───────────────────────────────
  final double? xAxisLabelFontSize;
  final double? yAxisLabelFontSize;
  final Color? xAxisLabelColor;
  final Color? yAxisLabelColor;

  // ── Legend ────────────────────────────────
  final bool? showLegend;
  final String? legendPosition;

  // ── Tooltip ───────────────────────────────
  final Color? tooltipBgColor;
  final Color? tooltipTextColor;
  final double? tooltipFontSize;

  // ── Secondary Y-Axis ──────────────────────
  final bool? useSecondaryYAxis;
  final String? secondaryYAxisTitle;
  final double? secondaryYAxisMin;
  final double? secondaryYAxisMax;
  final double? secondaryYAxisInterval;
  final double? secondaryAxisLabelFontSize;
  final Color? secondaryAxisLabelColor;

  @override
  State<HistogramChart> createState() => _HistogramChartState();
}

class _HistogramChartState extends State<HistogramChart> {
  late List<_ComboPoint> _data;
  late TooltipBehavior _tooltip;

  // Defaults
  static const _kDefaultTitle = 'Overview';
  static const _kDefaultYears = ['2021', '2022', '2023', '2024', '2025'];
  static const _kDefaultBarValues = [
    56543.0,
    103286.0,
    112047.0,
    127954.0,
    73149.0
  ];
  static const _kDefaultLineValues = [
    1054.47,
    1926.19,
    2089.57,
    2386.22,
    1364.16
  ];
  static const _kDefaultBarColor = Color(0xFF2F8F89);
  static const _kDefaultLineColor = Color(0xFFE47CA6);

  @override
  void initState() {
    super.initState();

    final years = widget.years ?? _kDefaultYears;
    final bars = (widget.barValues ?? _kDefaultBarValues)
        .map((e) => e.toDouble())
        .toList();
    final lines = (widget.lineValues ?? _kDefaultLineValues)
        .map((e) => e.toDouble())
        .toList();

    final n = [years.length, bars.length, lines.length]
        .reduce((a, b) => a < b ? a : b);
    _data = List.generate(n, (i) => _ComboPoint(years[i], bars[i], lines[i]));

    _tooltip = TooltipBehavior(
      enable: true,
      canShowMarker: true,
      shared: false, // ❗ แสดง tooltip ทีละซีรีส์ (ไม่รวมกัน)
      color: widget.tooltipBgColor ?? const Color(0xFF1E1E1E),
      textStyle: GoogleFonts.ibmPlexSansThaiLooped(
        color: widget.tooltipTextColor ?? Colors.white,
        fontSize: (widget.tooltipFontSize ?? 12.0),
      ),
    );
  }

  LegendPosition _legendPosFromString(String? v) {
    switch ((v ?? 'bottom').toLowerCase()) {
      case 'top':
        return LegendPosition.top;
      case 'left':
        return LegendPosition.left;
      case 'right':
        return LegendPosition.right;
      default:
        return LegendPosition.bottom;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    // Formatters
    final comma = NumberFormat.decimalPattern();
    final lineFmt = NumberFormat("#,##0.##");
    final yFmt = NumberFormat.decimalPattern();

    // Fallbacks
    final showTitle = widget.showChartTitle ?? true;
    final title = widget.title ?? _kDefaultTitle;
    final xRotate = widget.xLabelRotation ?? 0;

    final barSeriesName = widget.barSeriesName ?? 'Cases';
    final lineSeriesName = widget.lineSeriesName ?? 'Rate';
    final barColor = widget.barColor ?? _kDefaultBarColor;
    final lineColor = widget.lineColor ?? _kDefaultLineColor;
    final barCornerRadius = widget.barCornerRadius ?? 4.0;
    final lineWidth = widget.lineWidth ?? 3.0;
    final useSpline = widget.useSpline ?? false;
    final splineTension = (widget.splineTension ?? 0.5).clamp(0.0, 1.0);
    final showBarLabels = widget.showBarDataLabels ?? true;
    final showLineLabels = widget.showLineDataLabels ?? true;

    final xAxisFontSize = widget.xAxisLabelFontSize ?? 12.0;
    final yAxisFontSize = widget.yAxisLabelFontSize ?? 12.0;
    final xAxisLabelColor = widget.xAxisLabelColor ?? const Color(0xFF60636B);
    final yAxisLabelColor = widget.yAxisLabelColor ?? const Color(0xFF60636B);

    final showLegend = widget.showLegend ?? false;
    final legendPos = _legendPosFromString(widget.legendPosition);

    // Label styles
    final barLabelFontSize = widget.barDataLabelFontSize ?? 12.0;
    final barLabelColor = widget.barDataLabelColor ?? Colors.white;
    final lineLabelFontSize = widget.lineDataLabelFontSize ?? 12.0;
    final lineLabelColor = widget.lineDataLabelColor ??
        (isLight ? Colors.black87 : Colors.white70);

    // ❗ บังคับใช้แกนขวาสำหรับเส้นเสมอ (กันสับสน/กันสเกลรวมกับแกนซ้าย)
    final useSecondaryY = true;

    // Secondary Y axis (right)
    final secondaryAxis = NumericAxis(
      name: 'lineAxis',
      opposedPosition: true,
      axisLine: const AxisLine(width: 0),
      majorTickLines: const MajorTickLines(size: 0),
      labelStyle: GoogleFonts.ibmPlexSansThaiLooped(
        color: widget.secondaryAxisLabelColor ??
            (isLight ? Colors.black54 : Colors.white70),
        fontSize: widget.secondaryAxisLabelFontSize ?? 12.0,
      ),
      title: (widget.secondaryYAxisTitle != null &&
              widget.secondaryYAxisTitle!.isNotEmpty)
          ? AxisTitle(
              text: widget.secondaryYAxisTitle!,
              textStyle: GoogleFonts.ibmPlexSansThaiLooped(),
            )
          : const AxisTitle(text: ''),
      minimum: widget.secondaryYAxisMin,
      maximum: widget.secondaryYAxisMax,
      interval: widget.secondaryYAxisInterval,
      majorGridLines:
          const MajorGridLines(width: 0), // ใช้กริดจากแกนซ้ายเป็นหลัก
      numberFormat: lineFmt,
    );

    final chart = SfCartesianChart(
      plotAreaBorderWidth: 0,

      // ชื่อกราฟ + ฟอนต์
      title: showTitle
          ? ChartTitle(
              text: title,
              textStyle: GoogleFonts.ibmPlexSansThaiLooped(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
            )
          : const ChartTitle(text: ''),

      primaryXAxis: CategoryAxis(
        majorGridLines:
            const MajorGridLines(width: 0.8, color: Color(0xFFE0E0E0)),
        axisLine: const AxisLine(width: 0),
        labelRotation: xRotate,
        labelStyle: GoogleFonts.ibmPlexSansThaiLooped(
          color: xAxisLabelColor,
          fontSize: xAxisFontSize,
        ),
      ),

      // Left Y axis for bars
      primaryYAxis: NumericAxis(
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
        numberFormat: yFmt,
        majorGridLines:
            const MajorGridLines(width: 0.8, color: Color(0xFFD6D6D6)),
        minorGridLines:
            const MinorGridLines(width: 0.4, color: Color(0xFFF0F0F0)),
        labelStyle: GoogleFonts.ibmPlexSansThaiLooped(
          color: yAxisLabelColor,
          fontSize: yAxisFontSize,
        ),
      ),

      // Add right axis (always on)
      axes: <ChartAxis>[secondaryAxis],

      tooltipBehavior: _tooltip,

      // Legend + ฟอนต์
      legend: Legend(
        isVisible: showLegend,
        position: legendPos,
        textStyle: GoogleFonts.ibmPlexSansThaiLooped(
          fontSize: 12.0,
          fontWeight: FontWeight.w500,
        ),
      ),

      series: <CartesianSeries<_ComboPoint, String>>[
        // ── BAR (left axis) ──────────────────────
        ColumnSeries<_ComboPoint, String>(
          name: barSeriesName,
          dataSource: _data,
          xValueMapper: (d, _) => d.year,
          yValueMapper: (d, _) => d.bar,
          pointColorMapper: (_, __) => barColor,
          borderRadius: BorderRadius.all(Radius.circular(barCornerRadius)),
          width: 0.65,
          dataLabelMapper: (d, _) => comma.format(d.bar),
          dataLabelSettings: DataLabelSettings(
            isVisible: showBarLabels,
            labelAlignment: ChartDataLabelAlignment.middle,
            textStyle: GoogleFonts.ibmPlexSansThaiLooped(
              color: barLabelColor,
              fontWeight: FontWeight.w500,
              fontSize: barLabelFontSize,
            ),
          ),
        ),

        // ── LINE / SPLINE (right axis) ───────────
        useSpline
            ? SplineSeries<_ComboPoint, String>(
                name: lineSeriesName,
                dataSource: _data,
                xValueMapper: (d, _) => d.year,
                // ไม่คูณ scale ใด ๆ ใช้ค่าแท้จริงบนแกนขวา
                yValueMapper: (d, _) => d.line,
                color: lineColor,
                width: lineWidth,
                cardinalSplineTension: splineTension,
                markerSettings:
                    const MarkerSettings(isVisible: true, height: 8, width: 8),
                dataLabelMapper: (d, _) => lineFmt.format(d.line),
                dataLabelSettings: DataLabelSettings(
                  isVisible: showLineLabels,
                  labelAlignment: ChartDataLabelAlignment.top,
                  textStyle: GoogleFonts.ibmPlexSansThaiLooped(
                    color: lineLabelColor,
                    fontWeight: FontWeight.w500,
                    fontSize: lineLabelFontSize,
                  ),
                ),
                yAxisName: 'lineAxis', // ผูกกับแกนขวา
              )
            : LineSeries<_ComboPoint, String>(
                name: lineSeriesName,
                dataSource: _data,
                xValueMapper: (d, _) => d.year,
                // ไม่คูณ scale ใด ๆ ใช้ค่าแท้จริงบนแกนขวา
                yValueMapper: (d, _) => d.line,
                color: lineColor,
                width: lineWidth,
                markerSettings:
                    const MarkerSettings(isVisible: true, height: 8, width: 8),
                dataLabelMapper: (d, _) => lineFmt.format(d.line),
                dataLabelSettings: DataLabelSettings(
                  isVisible: showLineLabels,
                  labelAlignment: ChartDataLabelAlignment.top,
                  textStyle: GoogleFonts.ibmPlexSansThaiLooped(
                    color: lineLabelColor,
                    fontWeight: FontWeight.w500,
                    fontSize: lineLabelFontSize,
                  ),
                ),
                yAxisName: 'lineAxis', // ผูกกับแกนขวา
              ),
      ],
    );

    final content =
        SizedBox(width: widget.width, height: widget.height, child: chart);
    return widget.height == null
        ? AspectRatio(aspectRatio: 16 / 9, child: content)
        : content;
  }
}
