class Solution {
  bool isPalindrome(int x) {
    if (x < 0) {
      return false;
    }

    int reversed = 0;
    int original = x;

    // Reverse the number
    while (original != 0) {
      int digit = original % 10;
      reversed = reversed * 10 + digit;
      original ~/= 10;
    }

    // Compare the reversed number with the original
    return reversed == x;
  }
}
