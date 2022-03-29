import 'package:millie/millie.dart';

void main() {
  print(millify(4200)); // prints 4.2K
  print(millify(10000, lowercase: true)); // prints 10k
  print(millify(1250000, space: true, lowercase: true)); // prints 1.3 m
}