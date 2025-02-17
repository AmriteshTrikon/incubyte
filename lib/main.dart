class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    String numbersToProcess = numbers;

    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      numbersToProcess = numbers.substring(4);
    }

    List<String> numbersList =
        numbersToProcess.replaceAll('\n', delimiter).split(delimiter);

    List<int> negativeNumbers = [];
    int sum = 0;

    for (String number in numbersList) {
      int n = int.parse(number);
      if (n < 0) {
        negativeNumbers.add(n);
      }
      sum += n;
    }

    if (negativeNumbers.isNotEmpty) {
      throw Exception(
          'negative numbers not allowed: ${negativeNumbers.join(',')}');
    }

    return sum;
  }
}
