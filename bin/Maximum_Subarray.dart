class Solution {
  int maxSubArray(List<int> nums) {
    int currentSum = nums[0];
    int max = nums[0];

    for (int i = 1; i < nums.length; i++) {
      currentSum = (nums[i] > currentSum + nums[i])
          ? nums[i]
          : currentSum + nums[i];

      max = (currentSum > max) ? currentSum : max;
    }

    return max;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  int result = solution.maxSubArray(nums);
  print("Maximum subarray sum is: $result");
}