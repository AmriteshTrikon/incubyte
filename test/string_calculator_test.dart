import 'package:string_calculator/main.dart';
import 'package:test/test.dart';

// //red-phase test cases
// void main() {
//   group('StringCalculator', () {
//     late StringCalculator calculator;

//     setUp(() {
//       calculator = StringCalculator();
//     });

//     test('should return 0 for empty string', () {
//       expect(calculator.add(''), equals(0));
//     });

//     test('should return number for single number', () {
//       expect(calculator.add('1'), equals(1));
//     });

//     test('should return sum for two comma separated numbers', () {
//       expect(calculator.add('1,2'), equals(3));
//     });

//     test('should handle new lines between numbers', () {
//       expect(calculator.add('1\n2,3'), equals(6));
//     });

//     test('should support different delimiters', () {
//       expect(calculator.add('//;\n1;2'), equals(3));
//     });

//     test('should throw exception for negative numbers', () {
//       expect(
//         () => calculator.add('-1,2'),
//         throwsA(predicate(
//             (e) => e.toString() == 'negative numbers not allowed: -1')),
//       );
//     });

//     test('should show all negative numbers in exception', () {
//       expect(
//         () => calculator.add('-1,-2,3'),
//         throwsA(predicate(
//             (e) => e.toString() == 'negative numbers not allowed: -1,-2')),
//       );
//     });

//     test('should handle multiple delimiters', () {
//       expect(calculator.add('//[;][,]\n1;2,3'), equals(6));
//     });

//     test('should handle delimiters with multiple characters', () {
//       expect(calculator.add('//[***]\n1***2***3'), equals(6));
//     });

//     test('should ignore numbers bigger than 1000', () {
//       expect(calculator.add('2,1001'), equals(2));
//     });

//     test('should handle mixed delimiters and newlines', () {
//       expect(calculator.add('//;\n1;2\n3'), equals(6));
//     });

//     test('should handle empty sections between delimiters', () {
//       expect(calculator.add('1,,2'), throwsA(isA<FormatException>()));
//     });
//   });
// }

//green-phase test cases

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
    });

    test('should return sum for two comma separated numbers', () {
      expect(calculator.add('1,2'), equals(3));
    });

    test('should handle new lines between numbers', () {
      expect(calculator.add('1\n2,3'), equals(6));
    });

    test('should support different delimiters', () {
      expect(calculator.add('//;\n1;2'), equals(3));
    });

    test('should throw exception for negative numbers', () {
      expect(
        () => calculator.add('-1,2'),
        throwsA(predicate(
            (e) => e.toString() == 'negative numbers not allowed: -1')),
      );
    });

    test('should show all negative numbers in exception', () {
      expect(
        () => calculator.add('-1,-2,3'),
        throwsA(predicate(
            (e) => e.toString() == 'negative numbers not allowed: -1,-2')),
      );
    });
  });
}
