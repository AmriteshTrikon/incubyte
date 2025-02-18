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
    List<int> negatives = [];
    int sum = 0;

    for (String num in numberList) {
      int n = int.parse(num);
      if (n < 0) {
        negatives.add(n);
      }
      sum += n;
    }

    if (negatives.isNotEmpty) {
      throw Exception('Negatives not allowed: ${negatives.join(",")}');
    }

    return sum;
  }
}
