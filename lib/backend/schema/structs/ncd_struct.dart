// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NcdStruct extends BaseStruct {
  NcdStruct({
    String? district,
    double? copd,
    double? bloodpressure,
    double? kidney,
    double? diabetes,
    double? cancer,
    double? mentalHealth,
    double? stroke,
    int? evali,
    int? hyperlipidemia,
    double? coronaryArteries,
    double? sumary,
  })  : _district = district,
        _copd = copd,
        _bloodpressure = bloodpressure,
        _kidney = kidney,
        _diabetes = diabetes,
        _cancer = cancer,
        _mentalHealth = mentalHealth,
        _stroke = stroke,
        _evali = evali,
        _hyperlipidemia = hyperlipidemia,
        _coronaryArteries = coronaryArteries,
        _sumary = sumary;

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

  // "EVALI" field.
  int? _evali;
  int get evali => _evali ?? 0;
  set evali(int? val) => _evali = val;

  void incrementEvali(int amount) => evali = evali + amount;

  bool hasEvali() => _evali != null;

  // "Hyperlipidemia" field.
  int? _hyperlipidemia;
  int get hyperlipidemia => _hyperlipidemia ?? 0;
  set hyperlipidemia(int? val) => _hyperlipidemia = val;

  void incrementHyperlipidemia(int amount) =>
      hyperlipidemia = hyperlipidemia + amount;

  bool hasHyperlipidemia() => _hyperlipidemia != null;

  // "CoronaryArteries" field.
  double? _coronaryArteries;
  double get coronaryArteries => _coronaryArteries ?? 0.0;
  set coronaryArteries(double? val) => _coronaryArteries = val;

  void incrementCoronaryArteries(double amount) =>
      coronaryArteries = coronaryArteries + amount;

  bool hasCoronaryArteries() => _coronaryArteries != null;

  // "sumary" field.
  double? _sumary;
  double get sumary => _sumary ?? 0.0;
  set sumary(double? val) => _sumary = val;

  void incrementSumary(double amount) => sumary = sumary + amount;

  bool hasSumary() => _sumary != null;

  static NcdStruct fromMap(Map<String, dynamic> data) => NcdStruct(
        district: data['District'] as String?,
        copd: castToType<double>(data['COPD']),
        bloodpressure: castToType<double>(data['Bloodpressure']),
        kidney: castToType<double>(data['Kidney']),
        diabetes: castToType<double>(data['Diabetes']),
        cancer: castToType<double>(data['Cancer']),
        mentalHealth: castToType<double>(data['MentalHealth']),
        stroke: castToType<double>(data['Stroke']),
        evali: castToType<int>(data['EVALI']),
        hyperlipidemia: castToType<int>(data['Hyperlipidemia']),
        coronaryArteries: castToType<double>(data['CoronaryArteries']),
        sumary: castToType<double>(data['sumary']),
      );

  static NcdStruct? maybeFromMap(dynamic data) =>
      data is Map ? NcdStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'District': _district,
        'COPD': _copd,
        'Bloodpressure': _bloodpressure,
        'Kidney': _kidney,
        'Diabetes': _diabetes,
        'Cancer': _cancer,
        'MentalHealth': _mentalHealth,
        'Stroke': _stroke,
        'EVALI': _evali,
        'Hyperlipidemia': _hyperlipidemia,
        'CoronaryArteries': _coronaryArteries,
        'sumary': _sumary,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'EVALI': serializeParam(
          _evali,
          ParamType.int,
        ),
        'Hyperlipidemia': serializeParam(
          _hyperlipidemia,
          ParamType.int,
        ),
        'CoronaryArteries': serializeParam(
          _coronaryArteries,
          ParamType.double,
        ),
        'sumary': serializeParam(
          _sumary,
          ParamType.double,
        ),
      }.withoutNulls;

  static NcdStruct fromSerializableMap(Map<String, dynamic> data) => NcdStruct(
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
        evali: deserializeParam(
          data['EVALI'],
          ParamType.int,
          false,
        ),
        hyperlipidemia: deserializeParam(
          data['Hyperlipidemia'],
          ParamType.int,
          false,
        ),
        coronaryArteries: deserializeParam(
          data['CoronaryArteries'],
          ParamType.double,
          false,
        ),
        sumary: deserializeParam(
          data['sumary'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'NcdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NcdStruct &&
        district == other.district &&
        copd == other.copd &&
        bloodpressure == other.bloodpressure &&
        kidney == other.kidney &&
        diabetes == other.diabetes &&
        cancer == other.cancer &&
        mentalHealth == other.mentalHealth &&
        stroke == other.stroke &&
        evali == other.evali &&
        hyperlipidemia == other.hyperlipidemia &&
        coronaryArteries == other.coronaryArteries &&
        sumary == other.sumary;
  }

  @override
  int get hashCode => const ListEquality().hash([
        district,
        copd,
        bloodpressure,
        kidney,
        diabetes,
        cancer,
        mentalHealth,
        stroke,
        evali,
        hyperlipidemia,
        coronaryArteries,
        sumary
      ]);
}

NcdStruct createNcdStruct({
  String? district,
  double? copd,
  double? bloodpressure,
  double? kidney,
  double? diabetes,
  double? cancer,
  double? mentalHealth,
  double? stroke,
  int? evali,
  int? hyperlipidemia,
  double? coronaryArteries,
  double? sumary,
}) =>
    NcdStruct(
      district: district,
      copd: copd,
      bloodpressure: bloodpressure,
      kidney: kidney,
      diabetes: diabetes,
      cancer: cancer,
      mentalHealth: mentalHealth,
      stroke: stroke,
      evali: evali,
      hyperlipidemia: hyperlipidemia,
      coronaryArteries: coronaryArteries,
      sumary: sumary,
    );
