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

import 'dart:math' as math;
import 'package:syncfusion_flutter_charts/charts.dart';

class ScatterChart extends StatelessWidget {
  const ScatterChart({
    super.key,
    this.title, // จะไม่ถูกใช้ (เราตัดชื่อกราฟออก)
    this.heightsCm,
    this.weightsKg,
    this.systolicMmHg,
    this.diastolicMmHg,
    this.width,
    this.height,
    this.autoNormalizeHeight = true,
    this.showLegend = true,
    this.colorBothHigh = const Color(0xFFfebb08),
    this.colorIsoSystolic = const Color(0xFFff6801),
    this.colorIsoDiastolic = const Color(0xFFc80b07),
  });

  final String? title; // kept for backward-compat, but NOT displayed
  final List<num>? heightsCm;
  final List<num>? weightsKg;
  final List<num>? systolicMmHg;
  final List<num>? diastolicMmHg;
  final double? width;
  final double? height;
  final bool autoNormalizeHeight;
  final bool showLegend;
  final Color colorBothHigh;
  final Color colorIsoSystolic;
  final Color colorIsoDiastolic;

  @override
  Widget build(BuildContext context) {
    // ถ้าไม่ส่งข้อมูลจริง: สร้าง sample จำนวนมากแบบทับ ๆ กัน
    final bool useSample = (heightsCm == null || heightsCm!.isEmpty) ||
        (weightsKg == null || weightsKg!.isEmpty) ||
        (systolicMmHg == null || systolicMmHg!.isEmpty) ||
        (diastolicMmHg == null || diastolicMmHg!.isEmpty);

    late final List<num> hSrc;
    late final List<num> wSrc;
    late final List<num> sSrc;
    late final List<num> dSrc;

    if (useSample) {
      // สร้าง 300 จุด (กระจุก + กระจาย) เพื่อให้ดูทับกันเยอะ ๆ
      final samples = _generateDenseSamples(total: 300);
      hSrc = samples.heights;
      wSrc = samples.weights;
      sSrc = samples.systolics;
      dSrc = samples.diastolics;
    } else {
      hSrc = heightsCm!;
      wSrc = weightsKg!;
      sSrc = systolicMmHg!;
      dSrc = diastolicMmHg!;
    }

    // ทำให้ความยาวเท่ากัน
    final n = [hSrc.length, wSrc.length, sSrc.length, dSrc.length]
        .reduce((a, b) => a < b ? a : b);

    // ✅ ปรับหน่วยความสูง (เช่น 160000 -> 160)
    List<double> normHeights = List.generate(n, (i) => hSrc[i].toDouble());
    if (autoNormalizeHeight && normHeights.isNotEmpty) {
      final maxH = normHeights.reduce((a, b) => a > b ? a : b);
      double factor = 1.0;
      if (maxH > 1000) {
        if (maxH / 10 >= 100 && maxH / 10 <= 250) {
          factor = 10;
        } else if (maxH / 100 >= 100 && maxH / 100 <= 250) {
          factor = 100;
        } else if (maxH / 1000 >= 100 && maxH / 1000 <= 250) {
          factor = 1000;
        }
      }
      if (factor != 1.0) {
        normHeights = normHeights.map((h) => h / factor).toList();
      }
    }

    // ✅ แบ่งกลุ่มตามเกณฑ์ความดัน
    final bothHigh = <_Pt>[];
    final isoSys = <_Pt>[];
    final isoDia = <_Pt>[];

    for (int i = 0; i < n; i++) {
      final h = normHeights[i];
      final w = wSrc[i].toDouble();
      final s = sSrc[i].toDouble();
      final d = dSrc[i].toDouble();

      if (s >= 140 && d >= 90) {
        bothHigh.add(_Pt(h, w));
      } else if (s >= 140 && d < 90) {
        isoSys.add(_Pt(h, w));
      } else if (s < 140 && d >= 90) {
        isoDia.add(_Pt(h, w));
      }
    }

    // ป้องกันกรณีไม่มีจุดเลย (เช่นกรองแล้วเหลือว่าง)
    final allPts = [...bothHigh, ...isoSys, ...isoDia];
    if (allPts.isEmpty) {
      // ใส่จุดเล็ก ๆ ไว้ให้แกนไม่พัง
      bothHigh.add(const _Pt(165, 70));
      allPts.addAll(bothHigh);
    }

    // คำนวณขอบเขตแกน
    final minX = _niceFloor(
        allPts.map((e) => e.h).reduce((a, b) => a < b ? a : b),
        step: 5,
        minBound: 120);
    final maxX = _niceCeil(
        allPts.map((e) => e.h).reduce((a, b) => a > b ? a : b),
        step: 5,
        maxBound: 200);
    final minY = _niceFloor(
        allPts.map((e) => e.w).reduce((a, b) => a < b ? a : b),
        step: 5,
        minBound: 20);
    final maxY = _niceCeil(
        allPts.map((e) => e.w).reduce((a, b) => a > b ? a : b),
        step: 5,
        maxBound: 180);

    // ✅ Series เฉพาะ 3 ประเภท + ลด opacity เพื่อเห็นการทับซ้อน
    final series = <ScatterSeries<_Pt, num>>[
      ScatterSeries<_Pt, num>(
        name: 'สูงทั้งสองตัว',
        dataSource: bothHigh,
        xValueMapper: (d, _) => d.h,
        yValueMapper: (d, _) => d.w,
        color: colorBothHigh,
        opacity: 0.85,
        markerSettings: const MarkerSettings(
            height: 8, width: 8, shape: DataMarkerType.circle),
      ),
      ScatterSeries<_Pt, num>(
        name: 'ตัวบนสูงอย่างเดียว',
        dataSource: isoSys,
        xValueMapper: (d, _) => d.h,
        yValueMapper: (d, _) => d.w,
        color: colorIsoSystolic,
        opacity: 0.75,
        markerSettings: const MarkerSettings(
            height: 8, width: 8, shape: DataMarkerType.circle),
      ),
      ScatterSeries<_Pt, num>(
        name: 'ตัวล่างสูงอย่างเดียว',
        dataSource: isoDia,
        xValueMapper: (d, _) => d.h,
        yValueMapper: (d, _) => d.w,
        color: colorIsoDiastolic,
        opacity: 0.75,
        markerSettings: const MarkerSettings(
            height: 8, width: 8, shape: DataMarkerType.circle),
      ),
    ];

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 360,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        // ❌ ตัดชื่อกราฟออก
        title: const ChartTitle(text: ''),
        legend: Legend(
          isVisible: showLegend,
          overflowMode: LegendItemOverflowMode.wrap,
        ),
        tooltipBehavior: TooltipBehavior(
          enable: true,
          canShowMarker: true,
          format: 'ส่วนสูง: point.x cm\nน้ำหนัก: point.y kg',
        ),
        primaryXAxis: NumericAxis(
          title: const AxisTitle(text: 'Height (CM)'),
          labelFormat: '{value}',
          minimum: minX,
          maximum: maxX,
          interval: 10,
          majorGridLines:
              const MajorGridLines(width: 0.5, color: Color(0xFFE0E0E0)),
        ),
        primaryYAxis: NumericAxis(
          title: const AxisTitle(text: 'Weight (KG)'),
          minimum: minY,
          maximum: maxY,
          interval: 20,
          majorGridLines:
              const MajorGridLines(width: 0.8, color: Color(0xFFD6D6D6)),
        ),
        series: series,
      ),
    );
  }
}

class _Pt {
  final double h;
  final double w;
  const _Pt(this.h, this.w);
}

/// กำเนิดข้อมูลตัวอย่างจำนวนมาก (ทับ ๆ กัน) พร้อมค่า BP ให้เข้า 3 เกณฑ์
class _DenseSamples {
  final List<num> heights;
  final List<num> weights;
  final List<num> systolics;
  final List<num> diastolics;
  _DenseSamples(this.heights, this.weights, this.systolics, this.diastolics);
}

_DenseSamples _generateDenseSamples({int total = 300}) {
  final r = math.Random(42);

  // แบ่งสัดส่วนสามประเภท (รวมเป็น total)
  final nBoth = (total * 0.35).round(); // สูงทั้งสองตัว
  final nIsoS = (total * 0.40).round(); // ตัวบนสูงอย่างเดียว
  final nIsoD = total - nBoth - nIsoS; // ตัวล่างสูงอย่างเดียว

  final heights = <num>[];
  final weights = <num>[];
  final systolic = <num>[];
  final diastolic = <num>[];

  // helper: สุ่มค่าจาก normal-ish distribution (Box-Muller แบบง่าย)
  double _norm(double mean, double sd) {
    final u1 = (r.nextDouble() + 1e-9).clamp(1e-9, 1.0);
    final u2 = r.nextDouble();
    final z = math.sqrt(-2.0 * math.log(u1)) * math.cos(2 * math.pi * u2);
    return mean + z * sd;
  }

  // สร้างกลุ่ม "สูงทั้งสองตัว": S>=150~170, D>=95~110
  for (int i = 0; i < nBoth; i++) {
    final h = _norm(165, 7).clamp(145.0, 190.0);
    final w = _norm(78, 15).clamp(40.0, 150.0);
    final s = _norm(155, 12).clamp(140.0, 200.0);
    final d = _norm(98, 8).clamp(90.0, 130.0);
    heights.add(h);
    weights.add(w);
    systolic.add(s);
    diastolic.add(d);
  }

  // สร้างกลุ่ม "ตัวบนสูงอย่างเดียว": S>=145~165, D<90
  for (int i = 0; i < nIsoS; i++) {
    final h = _norm(168, 7).clamp(150.0, 195.0);
    final w = _norm(72, 13).clamp(35.0, 140.0);
    final s = _norm(150, 10).clamp(140.0, 190.0);
    final d = _norm(84, 6).clamp(60.0, 89.0);
    heights.add(h);
    weights.add(w);
    systolic.add(s);
    diastolic.add(d);
  }

  // สร้างกลุ่ม "ตัวล่างสูงอย่างเดียว": S<140, D>=90
  for (int i = 0; i < nIsoD; i++) {
    final h = _norm(163, 8).clamp(145.0, 190.0);
    final w = _norm(80, 16).clamp(40.0, 160.0);
    final s = _norm(132, 6).clamp(110.0, 139.0);
    final d = _norm(95, 6).clamp(90.0, 120.0);
    heights.add(h);
    weights.add(w);
    systolic.add(s);
    diastolic.add(d);
  }

  return _DenseSamples(heights, weights, systolic, diastolic);
}

// Utility: คำนวณช่วงแกน
double _niceFloor(double v, {double step = 5, double? minBound}) {
  final f = (v / step).floorToDouble() * step;
  return minBound != null ? (f < minBound ? minBound : f) : f;
}

double _niceCeil(double v, {double step = 5, double? maxBound}) {
  final c = (v / step).ceilToDouble() * step;
  return maxBound != null ? (c > maxBound ? maxBound : c) : c;
}
