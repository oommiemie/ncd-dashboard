// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HealthDistrictStruct extends BaseStruct {
  HealthDistrictStruct({
    String? healthDistrict,
    List<ProvinceStruct>? province,
  })  : _healthDistrict = healthDistrict,
        _province = province;

  // "HealthDistrict" field.
  String? _healthDistrict;
  String get healthDistrict => _healthDistrict ?? '';
  set healthDistrict(String? val) => _healthDistrict = val;

  bool hasHealthDistrict() => _healthDistrict != null;

  // "Province" field.
  List<ProvinceStruct>? _province;
  List<ProvinceStruct> get province => _province ?? const [];
  set province(List<ProvinceStruct>? val) => _province = val;

  void updateProvince(Function(List<ProvinceStruct>) updateFn) {
    updateFn(_province ??= []);
  }

  bool hasProvince() => _province != null;

  static HealthDistrictStruct fromMap(Map<String, dynamic> data) =>
      HealthDistrictStruct(
        healthDistrict: data['HealthDistrict'] as String?,
        province: getStructList(
          data['Province'],
          ProvinceStruct.fromMap,
        ),
      );

  static HealthDistrictStruct? maybeFromMap(dynamic data) => data is Map
      ? HealthDistrictStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'HealthDistrict': _healthDistrict,
        'Province': _province?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'HealthDistrict': serializeParam(
          _healthDistrict,
          ParamType.String,
        ),
        'Province': serializeParam(
          _province,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static HealthDistrictStruct fromSerializableMap(Map<String, dynamic> data) =>
      HealthDistrictStruct(
        healthDistrict: deserializeParam(
          data['HealthDistrict'],
          ParamType.String,
          false,
        ),
        province: deserializeStructParam<ProvinceStruct>(
          data['Province'],
          ParamType.DataStruct,
          true,
          structBuilder: ProvinceStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HealthDistrictStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HealthDistrictStruct &&
        healthDistrict == other.healthDistrict &&
        listEquality.equals(province, other.province);
  }

  @override
  int get hashCode => const ListEquality().hash([healthDistrict, province]);
}

HealthDistrictStruct createHealthDistrictStruct({
  String? healthDistrict,
}) =>
    HealthDistrictStruct(
      healthDistrict: healthDistrict,
    );
