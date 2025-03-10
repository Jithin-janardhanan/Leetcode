class Solution {
  List<int>? twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {}; // Stores {number: index}

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];

      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i]; // Return indices of the two numbers
      }
      numMap[nums[i]] = i; // Store the number and its index
    }

    return null; // If no valid pair is found
  }
}

void main() {
  Solution solution = Solution();
  List<int>? result = solution.twoSum([2, 7, 11, 15], 9);
  
  if (result != null) {
    print("Indices: ${result[0]}, ${result[1]}"); // Expected output: Indices: 0, 1
  } else {
    print("No pair found.");
  }
}
