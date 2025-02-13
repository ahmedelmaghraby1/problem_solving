class Solution {
  static bool isAnagram(String first, String second) {
    bool isSame = true;
    if (first.length != second.length) {
      isSame = false;
    } else {
      Map<String, int> firstWordLettersCount = {};
      Map<String, int> secondWordLettersCount = {};
      for (int i = 0; i < first.length; i++) {
        firstWordLettersCount[first[i]] =
            (firstWordLettersCount[first[i]] ?? 0) + 1;
        secondWordLettersCount[second[i]] =
            (secondWordLettersCount[second[i]] ?? 0) + 1;
      }
      if (firstWordLettersCount.length != secondWordLettersCount.length) {
        isSame = false;
      } else {
        for (String key in firstWordLettersCount.keys) {
          if (secondWordLettersCount.containsKey(key)) {
            if (firstWordLettersCount[key] == secondWordLettersCount[key]) {
            } else {
              isSame = false;
            }
            ;
          } else {
            isSame = false;
          }
        }
      }
    }
    return isSame;
  }
}
