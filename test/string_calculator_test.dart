import 'package:test/test.dart';
import 'package:string_calculator/main.dart';

void main() {
  group('StringCalculator', () {
    late StringCalculator calculator;

    setUp(() {
      calculator = StringCalculator();
    });

    test('should return 0 for empty string', () {
      expect(calculator.add(''), equals(0));
    });

    test('should return number for single number', () {
      expect(calculator.add('1'), equals(1));
      expect(calculator.add('2'), equals(2));
    });

    test('should handle new lines between numbers', () {
      expect(calculator.add('1\n2,3'), equals(6));
      expect(calculator.add('1,2\n3'), equals(6));
    });

    test('should support different delimiters', () {
      expect(calculator.add('//;\n1;2'), equals(3));
      expect(calculator.add('//|\n1|2|3'), equals(6));
    });
  });
}
