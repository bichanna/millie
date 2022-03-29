/// parseNum ensures the value is a number (double)
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

  if (value is int || value == value.roundToDouble()) return value.toInt();

  return double.parse(value.toStringAsFixed(precision));
}

/// divideTillEnd divides and calls the passed function until `res` is less than 0.
void divideTillEnd(num value, Function func) {
  int denom = 1000;
  while (true) {
    double res = value / denom;
    if (res < 1) break;
    
    func(res);

    denom *= 1000;
  }
}