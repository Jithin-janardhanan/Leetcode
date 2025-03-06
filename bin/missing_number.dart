void main() {
  Solution missingNumber = Solution();
  print(missingNumber.missingNumber([3, 0, 1])); // Output: 2
}

class Solution {
  int missingNumber(List<int> nums) {
    int missing = nums.length; 
    for (int i = 0; i < nums.length; i++) {
      missing ^= i ^ nums[i];  
    }
    return missing;
  }
}
