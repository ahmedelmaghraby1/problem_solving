// class Solution {
//   static List<int> twoSum({required List<int> nums, required int target}) {
//     late List<int> solution = [];
//     if (nums.isEmpty) {
//       // print(solution);

//       return solution;
//     } else if (nums.length == 1) {
//       if (nums[0] == target) {
//         solution = [0];
//         print(solution);

//         return solution;
//       } else {
//         print(solution);

//         return solution;
//       }
//     } else {
//       for (int i = 0; i < nums.length; i++) {
//         if (nums[i] == target) {
//           if (nums[i] == 0) {
//             if (solution.length < 2) {
//               solution.add(i);
//             } else {
//               print(solution);
//               return solution;
//             }
//           } else {
//             solution = [i];
//             print(solution);

//             return solution;
//           }
//         } else {
//           for (int j = i + 1; j < nums.length; j++) {
//             if (nums[i] + nums[j] == target) {
//               print(nums[i]);
//               print(nums[j]);
//               solution = [i, j];
//               print(solution);

//               return solution;
//             } else {}
//           }
//         }
//       }
//       print(solution);
//       return solution;
//     }
//   }
// }

//DeepSeek solution
class Solution {
  static List<int> twoSum({required List<int> nums, required int target}) {
    // Create a hash map to store the difference and its index
    Map<int, int> numMap = {};

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      // Check if the complement exists in the map
      if (numMap.containsKey(complement)) {
        // If it exists, return the current index and the complement's index

        print([numMap[complement]!, i]);
        return [numMap[complement]!, i];
      }

      // Otherwise, store the current number and its index in the map
      numMap[nums[i]] = i;
    }

    // If no solution is found, return an empty list (though the problem guarantees a solution)
    return [];
  }
}
