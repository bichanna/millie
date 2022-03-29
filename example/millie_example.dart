import 'package:millie/millie.dart';

void main() {
  print(millify(4200)); // prints 4.2K
  print(millify(10000, lowercase: true)); // prints 10k
  print(millify(1250000, space: true, lowercase: true, precision: 3)); // prints 1.25 m
  print(millify(1000040000, precision: 6)); // prints 1.00004B
  print(millify(100000000000000000)); // prints 100P
  print(millify(-7809, precision: 3, space: true)); // prints -7.809 K
}