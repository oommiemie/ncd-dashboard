// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TabelNCDStruct extends BaseStruct {
  TabelNCDStruct({
    ProvinceNcdStruct? province,
    String? district,
    double? copd,
    double? bloodpressure,
    double? kidney,
    double? diabetes,
    double? cancer,
    double? mentalHealth,
    double? stroke,
    double? coronaryArteries,
  })  : _province = province,
        _district = district,
        _copd = copd,
        _bloodpressure = bloodpressure,
        _kidney = kidney,
        _diabetes = diabetes,
        _cancer = cancer,
        _mentalHealth = mentalHealth,
        _stroke = stroke,
        _coronaryArteries = coronaryArteries;

  // "Province" field.
  ProvinceNcdStruct? _province;
  ProvinceNcdStruct get province => _province ?? ProvinceNcdStruct();
  set province(ProvinceNcdStruct? val) => _province = val;

  void updateProvince(Function(ProvinceNcdStruct) updateFn) {
    updateFn(_province ??= ProvinceNcdStruct());
  }

  bool hasProvince() => _province != null;

  // "District" field.
  String? _district;
  String get district => _district ?? '';
  set district(String? val) => _district = val;

  bool hasDistrict() => _district != null;

  // "COPD" field.
  double? _copd;
  double get copd => _copd ?? 0.0;
  set copd(double? val) => _copd = val;

  void incrementCopd(double amount) => copd = copd + amount;

  bool hasCopd() => _copd != null;

  // "Bloodpressure" field.
  double? _bloodpressure;
  double get bloodpressure => _bloodpressure ?? 0.0;
  set bloodpressure(double? val) => _bloodpressure = val;

  void incrementBloodpressure(double amount) =>
      bloodpressure = bloodpressure + amount;

  bool hasBloodpressure() => _bloodpressure != null;

  // "Kidney" field.
  double? _kidney;
  double get kidney => _kidney ?? 0.0;
  set kidney(double? val) => _kidney = val;

  void incrementKidney(double amount) => kidney = kidney + amount;

  bool hasKidney() => _kidney != null;

  // "Diabetes" field.
  double? _diabetes;
  double get diabetes => _diabetes ?? 0.0;
  set diabetes(double? val) => _diabetes = val;

  void incrementDiabetes(double amount) => diabetes = diabetes + amount;

  bool hasDiabetes() => _diabetes != null;

  // "Cancer" field.
  double? _cancer;
  double get cancer => _cancer ?? 0.0;
  set cancer(double? val) => _cancer = val;

  void incrementCancer(double amount) => cancer = cancer + amount;

  bool hasCancer() => _cancer != null;

  // "MentalHealth" field.
  double? _mentalHealth;
  double get mentalHealth => _mentalHealth ?? 0.0;
  set mentalHealth(double? val) => _mentalHealth = val;

  void incrementMentalHealth(double amount) =>
      mentalHealth = mentalHealth + amount;

  bool hasMentalHealth() => _mentalHealth != null;

  // "Stroke" field.
  double? _stroke;
  double get stroke => _stroke ?? 0.0;
  set stroke(double? val) => _stroke = val;

  void incrementStroke(double amount) => stroke = stroke + amount;

  bool hasStroke() => _stroke != null;

  // "CoronaryArteries" field.
  double? _coronaryArteries;
  double get coronaryArteries => _coronaryArteries ?? 0.0;
  set coronaryArteries(double? val) => _coronaryArteries = val;

  void incrementCoronaryArteries(double amount) =>
      coronaryArteries = coronaryArteries + amount;

  bool hasCoronaryArteries() => _coronaryArteries != null;

  static TabelNCDStruct fromMap(Map<String, dynamic> data) => TabelNCDStruct(
        province: data['Province'] is ProvinceNcdStruct
            ? data['Province']
            : ProvinceNcdStruct.maybeFromMap(data['Province']),
        district: data['District'] as String?,
        copd: castToType<double>(data['COPD']),
        bloodpressure: castToType<double>(data['Bloodpressure']),
        kidney: castToType<double>(data['Kidney']),
        diabetes: castToType<double>(data['Diabetes']),
        cancer: castToType<double>(data['Cancer']),
        mentalHealth: castToType<double>(data['MentalHealth']),
        stroke: castToType<double>(data['Stroke']),
        coronaryArteries: castToType<double>(data['CoronaryArteries']),
      );

  static TabelNCDStruct? maybeFromMap(dynamic data) =>
      data is Map ? TabelNCDStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Province': _province?.toMap(),
        'District': _district,
        'COPD': _copd,
        'Bloodpressure': _bloodpressure,
        'Kidney': _kidney,
        'Diabetes': _diabetes,
        'Cancer': _cancer,
        'MentalHealth': _mentalHealth,
        'Stroke': _stroke,
        'CoronaryArteries': _coronaryArteries,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Province': serializeParam(
          _province,
          ParamType.DataStruct,
        ),
        'District': serializeParam(
          _district,
          ParamType.String,
        ),
        'COPD': serializeParam(
          _copd,
          ParamType.double,
        ),
        'Bloodpressure': serializeParam(
          _bloodpressure,
          ParamType.double,
        ),
        'Kidney': serializeParam(
          _kidney,
          ParamType.double,
        ),
        'Diabetes': serializeParam(
          _diabetes,
          ParamType.double,
        ),
        'Cancer': serializeParam(
          _cancer,
          ParamType.double,
        ),
        'MentalHealth': serializeParam(
          _mentalHealth,
          ParamType.double,
        ),
        'Stroke': serializeParam(
          _stroke,
          ParamType.double,
        ),
        'CoronaryArteries': serializeParam(
          _coronaryArteries,
          ParamType.double,
        ),
      }.withoutNulls;

  static TabelNCDStruct fromSerializableMap(Map<String, dynamic> data) =>
      TabelNCDStruct(
        province: deserializeStructParam(
          data['Province'],
          ParamType.DataStruct,
          false,
          structBuilder: ProvinceNcdStruct.fromSerializableMap,
        ),
        district: deserializeParam(
          data['District'],
          ParamType.String,
          false,
        ),
        copd: deserializeParam(
          data['COPD'],
          ParamType.double,
          false,
        ),
        bloodpressure: deserializeParam(
          data['Bloodpressure'],
          ParamType.double,
          false,
        ),
        kidney: deserializeParam(
          data['Kidney'],
          ParamType.double,
          false,
        ),
        diabetes: deserializeParam(
          data['Diabetes'],
          ParamType.double,
          false,
        ),
        cancer: deserializeParam(
          data['Cancer'],
          ParamType.double,
          false,
        ),
        mentalHealth: deserializeParam(
          data['MentalHealth'],
          ParamType.double,
          false,
        ),
        stroke: deserializeParam(
          data['Stroke'],
          ParamType.double,
          false,
        ),
        coronaryArteries: deserializeParam(
          data['CoronaryArteries'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TabelNCDStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TabelNCDStruct &&
        province == other.province &&
        district == other.district &&
        copd == other.copd &&
        bloodpressure == other.bloodpressure &&
        kidney == other.kidney &&
        diabetes == other.diabetes &&
        cancer == other.cancer &&
        mentalHealth == other.mentalHealth &&
        stroke == other.stroke &&
        coronaryArteries == other.coronaryArteries;
  }

  @override
  int get hashCode => const ListEquality().hash([
        province,
        district,
        copd,
        bloodpressure,
        kidney,
        diabetes,
        cancer,
        mentalHealth,
        stroke,
        coronaryArteries
      ]);
}

TabelNCDStruct createTabelNCDStruct({
  ProvinceNcdStruct? province,
  String? district,
  double? copd,
  double? bloodpressure,
  double? kidney,
  double? diabetes,
  double? cancer,
  double? mentalHealth,
  double? stroke,
  double? coronaryArteries,
}) =>
    TabelNCDStruct(
      province: province ?? ProvinceNcdStruct(),
      district: district,
      copd: copd,
      bloodpressure: bloodpressure,
      kidney: kidney,
      diabetes: diabetes,
      cancer: cancer,
      mentalHealth: mentalHealth,
      stroke: stroke,
      coronaryArteries: coronaryArteries,
    );
