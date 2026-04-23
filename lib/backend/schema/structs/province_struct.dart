// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvinceStruct extends BaseStruct {
  ProvinceStruct({
    String? province,
    List<DistrictStruct>? district,
  })  : _province = province,
        _district = district;

  // "Province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;

  bool hasProvince() => _province != null;

  // "District" field.
  List<DistrictStruct>? _district;
  List<DistrictStruct> get district => _district ?? const [];
  set district(List<DistrictStruct>? val) => _district = val;

  void updateDistrict(Function(List<DistrictStruct>) updateFn) {
    updateFn(_district ??= []);
  }

  bool hasDistrict() => _district != null;

  static ProvinceStruct fromMap(Map<String, dynamic> data) => ProvinceStruct(
        province: data['Province'] as String?,
        district: getStructList(
          data['District'],
          DistrictStruct.fromMap,
        ),
      );

  static ProvinceStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProvinceStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Province': _province,
        'District': _district?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Province': serializeParam(
          _province,
          ParamType.String,
        ),
        'District': serializeParam(
          _district,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProvinceStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProvinceStruct(
        province: deserializeParam(
          data['Province'],
          ParamType.String,
          false,
        ),
        district: deserializeStructParam<DistrictStruct>(
          data['District'],
          ParamType.DataStruct,
          true,
          structBuilder: DistrictStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProvinceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProvinceStruct &&
        province == other.province &&
        listEquality.equals(district, other.district);
  }

  @override
  int get hashCode => const ListEquality().hash([province, district]);
}

ProvinceStruct createProvinceStruct({
  String? province,
}) =>
    ProvinceStruct(
      province: province,
    );
