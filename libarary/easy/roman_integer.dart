class Solution {
  static romanToInt(String s) {
    late int sum = 0;
    int previousValue = 1001;
    late Map<String, int> conversionMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    for (int i = 0; i < s.length; i++) {
      int currentValue = conversionMap[s[i]]!;
      sum += currentValue;
      if (currentValue > previousValue) {
        sum -= (2 * previousValue);
      }
      previousValue = currentValue;
    }
    print(sum);
    return sum;
  }
}
