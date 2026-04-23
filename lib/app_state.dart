import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _SelectHealthDistrict = 1;
  int get SelectHealthDistrict => _SelectHealthDistrict;
  set SelectHealthDistrict(int value) {
    _SelectHealthDistrict = value;
  }

  List<String> _FilterYear = ['2568', '2567', '2566', '2565', '2564'];
  List<String> get FilterYear => _FilterYear;
  set FilterYear(List<String> value) {
    _FilterYear = value;
  }

  void addToFilterYear(String value) {
    FilterYear.add(value);
  }

  void removeFromFilterYear(String value) {
    FilterYear.remove(value);
  }

  void removeAtIndexFromFilterYear(int index) {
    FilterYear.removeAt(index);
  }

  void updateFilterYearAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    FilterYear[index] = updateFn(_FilterYear[index]);
  }

  void insertAtIndexInFilterYear(int index, String value) {
    FilterYear.insert(index, value);
  }

  List<String> _FilterProvince = [
    'ทั้งหมด',
    'เชียงใหม่',
    'เชียงราย',
    'ลำปาง',
    'ลำพูน',
    'แม่ฮ่องสอน',
    'น่าน',
    'พะเยา',
    'แพร่'
  ];
  List<String> get FilterProvince => _FilterProvince;
  set FilterProvince(List<String> value) {
    _FilterProvince = value;
  }

  void addToFilterProvince(String value) {
    FilterProvince.add(value);
  }

  void removeFromFilterProvince(String value) {
    FilterProvince.remove(value);
  }

  void removeAtIndexFromFilterProvince(int index) {
    FilterProvince.removeAt(index);
  }

  void updateFilterProvinceAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    FilterProvince[index] = updateFn(_FilterProvince[index]);
  }

  void insertAtIndexInFilterProvince(int index, String value) {
    FilterProvince.insert(index, value);
  }

  List<String> _hospital = [
    'โรงพยาบาทลดลองทดสอบ',
    'โรงพยาบาลแอทลาสการแพทย์',
    'โรงพยาบาลสุขใจประชารักษ์',
    'โรงพยาบาลเมืองใหม่เวชการ',
    'โรงพยาบาลศรีธาราพยาบาล',
    'โรงพยาบาลเกตเวย์การแพทย์'
  ];
  List<String> get hospital => _hospital;
  set hospital(List<String> value) {
    _hospital = value;
  }

  void addToHospital(String value) {
    hospital.add(value);
  }

  void removeFromHospital(String value) {
    hospital.remove(value);
  }

  void removeAtIndexFromHospital(int index) {
    hospital.removeAt(index);
  }

  void updateHospitalAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    hospital[index] = updateFn(_hospital[index]);
  }

  void insertAtIndexInHospital(int index, String value) {
    hospital.insert(index, value);
  }

  String _FilterHealthDistrict = 'ทั้งหมด';
  String get FilterHealthDistrict => _FilterHealthDistrict;
  set FilterHealthDistrict(String value) {
    _FilterHealthDistrict = value;
  }

  List<ProvinceNcdStruct> _provinceNCD = [
    ProvinceNcdStruct.fromSerializableMap(jsonDecode(
        '{\"provice\":\"จังหวัดเชียงใหม่\",\"District\":\"[\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"เมืองเชียงใหม่\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"31313.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"1313.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"13131.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"3131.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"3131.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"131.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"1313.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"13313\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"3133\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"1313.0\\\\\\\"}\\\",\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"แม่ริม\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"41424.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"44243.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"4242.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"2424.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"5343.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"53435.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"33535.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"132344\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"14141\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"35353.0\\\\\\\"}\\\",\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"หางดง\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"2343.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"5435.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"1234.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"65555.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"14654.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"54343.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"43543.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"414242\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"42242\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"54354.0\\\\\\\"}\\\",\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"สันป่าตอง\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"543454.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"562.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"2525.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"565456.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"46556.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"1545.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"654566.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"4242\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"42424\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"54555.0\\\\\\\"}\\\"]\"}')),
    ProvinceNcdStruct.fromSerializableMap(jsonDecode(
        '{\"provice\":\"จังหวัดเชียงราย\",\"District\":\"[\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"พาน\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"545.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"4242.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"42424.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"24242.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"42424.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"1343.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"46546.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"52525\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"25324\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"6463.0\\\\\\\"}\\\",\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"แม่สาย\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"7656.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"434.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"5525.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"3554.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"5446.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"3255.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"63535.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"52424\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"2452\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"6755.0\\\\\\\"}\\\"]\"}')),
    ProvinceNcdStruct.fromSerializableMap(jsonDecode(
        '{\"provice\":\"จังหวัดลำพูน\",\"District\":\"[\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"เมืองลำพูน\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"323424.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"422.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"42342.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"442.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"52452.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"424.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"4245.0\\\\\\\",\\\\\\\"EVALI\\\\\\\":\\\\\\\"52424\\\\\\\",\\\\\\\"Hyperlipidemia\\\\\\\":\\\\\\\"542434\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"25452.0\\\\\\\"}\\\",\\\"{\\\\\\\"District\\\\\\\":\\\\\\\"ป่าซาง\\\\\\\",\\\\\\\"COPD\\\\\\\":\\\\\\\"6355.0\\\\\\\",\\\\\\\"Bloodpressure\\\\\\\":\\\\\\\"3353.0\\\\\\\",\\\\\\\"Kidney\\\\\\\":\\\\\\\"3576.0\\\\\\\",\\\\\\\"Diabetes\\\\\\\":\\\\\\\"6456.0\\\\\\\",\\\\\\\"Cancer\\\\\\\":\\\\\\\"5535.0\\\\\\\",\\\\\\\"MentalHealth\\\\\\\":\\\\\\\"3453.0\\\\\\\",\\\\\\\"Stroke\\\\\\\":\\\\\\\"6558.0\\\\\\\",\\\\\\\"CoronaryArteries\\\\\\\":\\\\\\\"76343.0\\\\\\\"}\\\"]\"}'))
  ];
  List<ProvinceNcdStruct> get provinceNCD => _provinceNCD;
  set provinceNCD(List<ProvinceNcdStruct> value) {
    _provinceNCD = value;
  }

  void addToProvinceNCD(ProvinceNcdStruct value) {
    provinceNCD.add(value);
  }

  void removeFromProvinceNCD(ProvinceNcdStruct value) {
    provinceNCD.remove(value);
  }

  void removeAtIndexFromProvinceNCD(int index) {
    provinceNCD.removeAt(index);
  }

  void updateProvinceNCDAtIndex(
    int index,
    ProvinceNcdStruct Function(ProvinceNcdStruct) updateFn,
  ) {
    provinceNCD[index] = updateFn(_provinceNCD[index]);
  }

  void insertAtIndexInProvinceNCD(int index, ProvinceNcdStruct value) {
    provinceNCD.insert(index, value);
  }

  List<String> _FilterDistrist = [
    'ทั้งหมด',
    'เมืองเชียงใหม่',
    'จอมทอง',
    'แม่แจ่ม',
    'เชียงดาว',
    'ดอยสะเก็ด',
    'แม่แตง',
    'แม่ริม',
    'สันทราย',
    'สันกำแพง',
    'สันป่าตอง',
    'หางดง',
    'ฮอด',
    'ดอยเต่า',
    'อมก๋อย',
    'สะเมิง',
    'ฝาง',
    'แม่อาย',
    'พร้าว',
    'แม่วาง',
    'แม่ออน',
    'ดอยหล่อ',
    'เวียงแหง',
    'ไชยปราการ',
    'ดอยหลวง'
  ];
  List<String> get FilterDistrist => _FilterDistrist;
  set FilterDistrist(List<String> value) {
    _FilterDistrist = value;
  }

  void addToFilterDistrist(String value) {
    FilterDistrist.add(value);
  }

  void removeFromFilterDistrist(String value) {
    FilterDistrist.remove(value);
  }

  void removeAtIndexFromFilterDistrist(int index) {
    FilterDistrist.removeAt(index);
  }

  void updateFilterDistristAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    FilterDistrist[index] = updateFn(_FilterDistrist[index]);
  }

  void insertAtIndexInFilterDistrist(int index, String value) {
    FilterDistrist.insert(index, value);
  }

  int _Sidbar = 1;
  int get Sidbar => _Sidbar;
  set Sidbar(int value) {
    _Sidbar = value;
  }

  List<String> _Filterfiscalyear = ['2567', '2565', '2564', '2560'];
  List<String> get Filterfiscalyear => _Filterfiscalyear;
  set Filterfiscalyear(List<String> value) {
    _Filterfiscalyear = value;
  }

  void addToFilterfiscalyear(String value) {
    Filterfiscalyear.add(value);
  }

  void removeFromFilterfiscalyear(String value) {
    Filterfiscalyear.remove(value);
  }

  void removeAtIndexFromFilterfiscalyear(int index) {
    Filterfiscalyear.removeAt(index);
  }

  void updateFilterfiscalyearAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Filterfiscalyear[index] = updateFn(_Filterfiscalyear[index]);
  }

  void insertAtIndexInFilterfiscalyear(int index, String value) {
    Filterfiscalyear.insert(index, value);
  }

  String _HealthDistrict = 'ทั้งหมด';
  String get HealthDistrict => _HealthDistrict;
  set HealthDistrict(String value) {
    _HealthDistrict = value;
  }

  String _province = 'ทั้งหมด';
  String get province => _province;
  set province(String value) {
    _province = value;
  }

  String _district = 'ทั้งหมด';
  String get district => _district;
  set district(String value) {
    _district = value;
  }

  String _Serviceunit = '';
  String get Serviceunit => _Serviceunit;
  set Serviceunit(String value) {
    _Serviceunit = value;
  }

  String _selectyear = 'ปี พ.ศ';
  String get selectyear => _selectyear;
  set selectyear(String value) {
    _selectyear = value;
  }

  String _itemyear = '';
  String get itemyear => _itemyear;
  set itemyear(String value) {
    _itemyear = value;
  }
}
