class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String normalized = numbers.replaceAll('\n', ',');
    List<String> numberList = normalized.split(',');
    int sum = 0;
    for (String num in numberList) {
      sum += int.parse(num);
    }
    return sum;
  }
}
