// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistrictStruct extends BaseStruct {
  DistrictStruct({
    String? district,
    List<String>? serviceunit,
  })  : _district = district,
        _serviceunit = serviceunit;

  // "district" field.
  String? _district;
  String get district => _district ?? '';
  set district(String? val) => _district = val;

  bool hasDistrict() => _district != null;

  // "Serviceunit" field.
  List<String>? _serviceunit;
  List<String> get serviceunit => _serviceunit ?? const [];
  set serviceunit(List<String>? val) => _serviceunit = val;

  void updateServiceunit(Function(List<String>) updateFn) {
    updateFn(_serviceunit ??= []);
  }

  bool hasServiceunit() => _serviceunit != null;

  static DistrictStruct fromMap(Map<String, dynamic> data) => DistrictStruct(
        district: data['district'] as String?,
        serviceunit: getDataList(data['Serviceunit']),
      );

  static DistrictStruct? maybeFromMap(dynamic data) =>
      data is Map ? DistrictStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'district': _district,
        'Serviceunit': _serviceunit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'district': serializeParam(
          _district,
          ParamType.String,
        ),
        'Serviceunit': serializeParam(
          _serviceunit,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DistrictStruct fromSerializableMap(Map<String, dynamic> data) =>
      DistrictStruct(
        district: deserializeParam(
          data['district'],
          ParamType.String,
          false,
        ),
        serviceunit: deserializeParam<String>(
          data['Serviceunit'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DistrictStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DistrictStruct &&
        district == other.district &&
        listEquality.equals(serviceunit, other.serviceunit);
  }

  @override
  int get hashCode => const ListEquality().hash([district, serviceunit]);
}

DistrictStruct createDistrictStruct({
  String? district,
}) =>
    DistrictStruct(
      district: district,
    );
