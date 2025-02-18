class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    String numbersToProcess = numbers;

    if (numbers.startsWith('//')) {
      delimiter = numbers[2];
      numbersToProcess = numbers.substring(4);
    }

    String normalized = numbersToProcess.replaceAll('\n', delimiter);
    List<String> numberList = normalized.split(delimiter);
    int sum = 0;
    for (String num in numberList) {
      sum += int.parse(num);
    }
    return sum;
  }
}
