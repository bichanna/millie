import './utils.dart';

const List<String> units = [
  "",  // nothing...
  "K", // thousand
  "M", // million
  "B", // billion
  "T", // trillion
  "P", // quadrillion
];

/// Converts big numbers to what's pleasant to see (a pretty girl, perhaps?)
String millify(
  int value,
  {
    int precision = 1,
    bool lowercase = false,
    bool space = true,
  }
) {

  // validate if `value` can be parsed or not
  num val = parseNum(value);

  // `prefix` will be used later
  String prefix = val < 0 ? "-" : "";

  // Let's just work with positive numbers 'cuz it's easier to handle
  val = val.abs();

  // keep dividing the input value by the digit grouping base (1000)
  // until the number and the unit index are discovered (?).
  int unitIndex = 0;
  divideTillEnd(value, (double res) {
    val = res;
    unitIndex++;
  });

  // The number is too big that Millie can't handle. So,
  // Millie just returns it as is.
  if (units.length <= unitIndex) return value.toString();

  // round the decimal number up to the desired precision
  num rounded = round(val, precision);

  // get the appropriate unit for the value
  String unit = units.length > unitIndex ? units[unitIndex] : "";
  String suffix = !lowercase ? unit : unit.toLowerCase();

  
  // add a space if the user specified to do so
  String spaceStr = space ? " " : "";
  
  return "$prefix$rounded$spaceStr$suffix";
}
