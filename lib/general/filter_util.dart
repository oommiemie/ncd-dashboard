import '/app_state.dart';

/// Fractional distribution of patients across the 13 health regions.
/// Used both to split data when a single region is selected, and to simulate
/// non-uniform HbA1C charts across health districts.
const Map<String, double> healthDistrictShare = {
  '1': 0.077,
  '2': 0.069,
  '3': 0.089,
  '4': 0.061,
  '5': 0.071,
  '6': 0.064,
  '7': 0.079,
  '8': 0.089,
  '9': 0.079,
  '10': 0.102,
  '11': 0.051,
  '12': 0.089,
  '13': 0.081,
};

/// Scales the overall dataset by the selected year. 2568 is the reference.
double yearMultiplier(String? year) {
  switch (year) {
    case '2568':
      return 1.00;
    case '2567':
      return 0.95;
    case '2566':
      return 0.90;
    case '2565':
      return 0.85;
    case '2564':
      return 0.78;
    case '2560':
      return 0.60;
    default:
      return 1.00;
  }
}

/// Scales the dataset when a specific health region is selected.
/// "ทั้งหมด" (all) → 1.0. A specific region → that region's share.
double healthDistrictMultiplier(String? district) {
  if (district == null || district.isEmpty || district == 'ทั้งหมด') {
    return 1.0;
  }
  // Strip any non-digit prefix; dropdowns store values like "เขตสุขภาพที่ 1" or "1".
  final digits = RegExp(r'\d+').firstMatch(district)?.group(0);
  if (digits == null) return 1.0;
  return healthDistrictShare[digits] ?? (1.0 / 13.0);
}

/// Combined multiplier derived from current FFAppState filter selection.
double appStateMultiplier() {
  final app = FFAppState();
  return yearMultiplier(app.itemyear) *
      healthDistrictMultiplier(app.HealthDistrict);
}

/// Convenience: scales an integer mock value by the current filter.
int scaledInt(num base) => (base * appStateMultiplier()).round();

/// Convenience: scales a double mock value by the current filter.
double scaledDouble(num base) => base * appStateMultiplier();
