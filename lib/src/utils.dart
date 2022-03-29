/// parseNum ensures the value is a number (double) and without range
/// and returns the parsed value.
double parseNum(num value) {
  double val = double.tryParse(value.toString()) ?? double.nan;
  
  if (val.isNaN) throw FormatException("Input value must be a number, not '$value'");

  return val;
}

/// round rounds a number up to a specified precision and returns it.
num round(num value, num precision) {
  if (value == double.infinity) throw Exception("Input value must be a finite number.");

  if (precision is! int || precision < 0) throw FormatException("Precision must be a positive whole number.");

  if (value is int) return value;

  return double.parse(value.toStringAsFixed(precision as int));
}