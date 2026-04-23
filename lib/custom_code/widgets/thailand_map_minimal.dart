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

import '/custom_code/widgets/index.dart';
//import '/flutter_flow/custom_functions.dart';

import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:intl/intl.dart';

class ThailandMapMinimal extends StatefulWidget {
  const ThailandMapMinimal({
    super.key,
    this.width,
    this.height,
    this.patientByProvince,
    this.provinceFocusZoom = 6.2,
    this.cornerRadius = 34, // ✅ รัศมีขอบมน
    this.withShadow = true, // ✅ เปิด/ปิดเงา
    this.backgroundColor, // สีพื้นกรอบภายนอก (ถ้าอยาก)
  });

  final double? width;
  final double? height;
  final Map<String, num>? patientByProvince;
  final double provinceFocusZoom;

  final double cornerRadius;
  final bool withShadow;
  final Color? backgroundColor;

  @override
  State<ThailandMapMinimal> createState() => _ThailandMapMinimalState();
}

class _ThailandMapMinimalState extends State<ThailandMapMinimal> {
  late MapShapeSource _mapSource;
  late MapZoomPanBehavior _zoomPanBehavior;
  late Map<String, num> _patients;

  static const List<String> _hr1Provinces = [
    'Chiang Mai',
    'Chiang Rai',
    'Lampang',
    'Lamphun',
    'Mae Hong Son',
    'Nan',
    'Phayao',
    'Phrae',
  ];

  static const Map<String, String> _thNames = {
    'Chiang Mai': 'เชียงใหม่',
    'Chiang Rai': 'เชียงราย',
    'Lampang': 'ลำปาง',
    'Lamphun': 'ลำพูน',
    'Mae Hong Son': 'แม่ฮ่องสอน',
    'Nan': 'น่าน',
    'Phayao': 'พะเยา',
    'Phrae': 'แพร่',
  };

  static const Map<String, MapLatLng> _centroids = {
    'Chiang Mai': MapLatLng(18.7877, 98.9931),
    'Chiang Rai': MapLatLng(19.9105, 99.8406),
    'Lampang': MapLatLng(18.2888, 99.4928),
    'Lamphun': MapLatLng(18.5800, 99.0075),
    'Mae Hong Son': MapLatLng(19.3013, 97.9685),
    'Nan': MapLatLng(18.7838, 100.7790),
    'Phayao': MapLatLng(19.1667, 99.9000),
    'Phrae': MapLatLng(18.1459, 100.1410),
  };

  int? _selectedIndex;

  @override
  void initState() {
    super.initState();

    _zoomPanBehavior = MapZoomPanBehavior(
      enablePinching: true,
      enablePanning: true,
      zoomLevel: 4.5,
      minZoomLevel: 4.0,
      maxZoomLevel: 7.0,
      focalLatLng: const MapLatLng(19.0, 99.0),
    );

    _patients = {
      'Chiang Mai': 12540,
      'Chiang Rai': 9830,
      'Lampang': 6420,
      'Lamphun': 3120,
      'Mae Hong Son': 1580,
      'Nan': 2750,
      'Phayao': 2230,
      'Phrae': 1980,
      ...?widget.patientByProvince,
    };

    _buildMapSource();
  }

  void _buildMapSource() {
    _mapSource = MapShapeSource.network(
      'https://pnvelvwsvlokgdrbznip.supabase.co/storage/v1/object/public/json/th_provinces_with_zone.geojson',
      shapeDataField: 'pro_en',
      dataCount: _hr1Provinces.length,
      primaryValueMapper: (int index) => _hr1Provinces[index],
      shapeColorValueMapper: (int index) {
        if (_selectedIndex == index) return 'Selected';
        return 'HR1';
      },
      shapeColorMappers: const [
        MapColorMapper(value: 'HR1', color: Color(0xFF9CEAFF)), // ฟ้าอ่อน
        MapColorMapper(
            value: 'Selected',
            color: Color(0xFF60DEE6)), // น้ำเงินเข้มเมื่อเลือก
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final numberFmt = NumberFormat.decimalPattern('th');

    final borderRadius = BorderRadius.circular(widget.cornerRadius);
    final boxShadow = widget.withShadow
        ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 18,
              spreadRadius: 1,
              offset: const Offset(0, 8),
            ),
          ]
        : <BoxShadow>[];

    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 420,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.white,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
      ),
      clipBehavior: Clip.antiAlias, // ✅ ให้ขอบมนทำงานจริง
      child: ClipRRect(
        borderRadius: borderRadius, // ✅ ตัดลูกแผนที่ให้มนตามกรอบ
        child: SfMapsTheme(
          data: SfMapsThemeData(
            shapeHoverColor: Colors.transparent,
            shapeHoverStrokeColor: Colors.grey[700],
            shapeHoverStrokeWidth: 1.5,
          ),
          child: SfMaps(
            layers: <MapLayer>[
              MapShapeLayer(
                source: _mapSource,
                color: const Color(0xFFEDEFF2), // สีพื้นจังหวัดอื่น (นอก HR1)
                strokeColor: Colors.white,
                strokeWidth: 1,
                showDataLabels: true,

                // ชื่อจังหวัด: สีดำทั้งหมด (ตามที่ขอไว้ก่อนหน้า)
                dataLabelSettings: const MapDataLabelSettings(
                  overflowMode: MapLabelOverflow.ellipsis,
                  textStyle: TextStyle(
                    fontFamily: 'IBMPlexSansThaiLooped',
                    fontSize: 9,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                zoomPanBehavior: _zoomPanBehavior,
                tooltipSettings: const MapTooltipSettings(
                  color: Colors.white,
                  strokeColor: Colors.black,
                  strokeWidth: 0.5,
                ),

                onSelectionChanged: (int index) {
                  setState(() {
                    _selectedIndex = index;
                    final name = _hr1Provinces[index];
                    final center = _centroids[name];
                    if (center != null) {
                      _zoomPanBehavior
                        ..zoomLevel = widget.provinceFocusZoom
                        ..focalLatLng = center;
                    }
                    _buildMapSource(); // อัปเดตสี selected
                  });
                },

                shapeTooltipBuilder: (BuildContext context, int index) {
                  final enName = _hr1Provinces[index];
                  final thName = _thNames[enName] ?? enName;
                  final value = _patients[enName] ?? 0;
                  final valueText = numberFmt.format(value);
                  final isSelected = _selectedIndex == index;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontFamily: 'IBMPlexSansThaiLooped',
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            thName,
                            style: TextStyle(
                              fontWeight: isSelected
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                              color: isSelected
                                  ? const Color(0xFF3C47E6)
                                  : Colors.black,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text('จำนวนผู้ป่วย: $valueText ราย'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
