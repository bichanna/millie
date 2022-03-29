import 'package:millie/millie.dart';
import 'package:test/test.dart';

void main() {
  group('Using Correct Suffix', () {
    test('100', () => expect(millify(100), equals("100")));
    test('thousand', () => expect(millify(1000), equals("1K")));
    test('million', () => expect(millify(1000000), equals("1M")));
    test('billion', () => expect(millify(1000000000), equals("1B")));
    test('trillion', () => expect(millify(1000000000000), equals("1T")));
  });

  group("Working with Negative Numbers", () {
    test('negative 100', () => expect(millify(-100), equals("-100")));
    test('negative thousand', () => expect(millify(-1000), equals("-1K")));
    test('negative million', () => expect(millify(-1000000), equals("-1M")));
    test('negative billion', () => expect(millify(-1000000000), equals("-1B")));
    test('negative trillion', () => expect(millify(-1000000000000), equals("-1T")));
  });

  group("Converting to Lowercase", () {
        test('100', () => expect(millify(100, lowercase: true), equals("100")));
    test('thousand', () => expect(millify(1000, lowercase: true), equals("1k")));
    test('million', () => expect(millify(1000000, lowercase: true), equals("1m")));
    test('billion', () => expect(millify(1000000000, lowercase: true), equals("1b")));
    test('trillion', () => expect(millify(1000000000000, lowercase: true), equals("1t")));
  });

  group("Adding An Additional Space", () {
    test('thousand', () => expect(millify(1000, space: true), equals("1 K")));
    test('million', () => expect(millify(1000000, space: true), equals("1 M")));
    test('billion', () => expect(millify(1000000000, space: true), equals("1 B")));
    test('trillion', () => expect(millify(1000000000000, space: true), equals("1 T")));
  });
}
