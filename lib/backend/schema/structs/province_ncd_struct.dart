// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProvinceNcdStruct extends BaseStruct {
  ProvinceNcdStruct({
    String? provice,
    List<NcdStruct>? district,
  })  : _provice = provice,
        _district = district;

  // "provice" field.
  String? _provice;
  String get provice => _provice ?? '';
  set provice(String? val) => _provice = val;

  bool hasProvice() => _provice != null;

  // "District" field.
  List<NcdStruct>? _district;
  List<NcdStruct> get district => _district ?? const [];
  set district(List<NcdStruct>? val) => _district = val;

  void updateDistrict(Function(List<NcdStruct>) updateFn) {
    updateFn(_district ??= []);
  }

  bool hasDistrict() => _district != null;

  static ProvinceNcdStruct fromMap(Map<String, dynamic> data) =>
      ProvinceNcdStruct(
        provice: data['provice'] as String?,
        district: getStructList(
          data['District'],
          NcdStruct.fromMap,
        ),
      );

  static ProvinceNcdStruct? maybeFromMap(dynamic data) => data is Map
      ? ProvinceNcdStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'provice': _provice,
        'District': _district?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'provice': serializeParam(
          _provice,
          ParamType.String,
        ),
        'District': serializeParam(
          _district,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ProvinceNcdStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProvinceNcdStruct(
        provice: deserializeParam(
          data['provice'],
          ParamType.String,
          false,
        ),
        district: deserializeStructParam<NcdStruct>(
          data['District'],
          ParamType.DataStruct,
          true,
          structBuilder: NcdStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProvinceNcdStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProvinceNcdStruct &&
        provice == other.provice &&
        listEquality.equals(district, other.district);
  }

  @override
  int get hashCode => const ListEquality().hash([provice, district]);
}

ProvinceNcdStruct createProvinceNcdStruct({
  String? provice,
}) =>
    ProvinceNcdStruct(
      provice: provice,
    );
