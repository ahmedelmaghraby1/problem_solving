class Solution {
  static bool containsDuplicate(List<int> nums) {
    Set numbers = nums.toSet();
    if (nums.length == numbers.length) {
      return true;
    } else {
      return false;
    }
  }
}
