class Solution {
  static String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    int minLen = strs.map((s) => s.length).reduce((a, b) => a < b ? a : b);
    int low = 0, high = minLen;

    while (low < high) {
      int mid = (low + high + 1) ~/ 2;
      String prefix = strs[0].substring(0, mid);

      if (strs.every((s) => s.startsWith(prefix))) {
        low = mid;
      } else {
        high = mid - 1;
      }
    }

    return strs[0].substring(0, low);
  }
}
