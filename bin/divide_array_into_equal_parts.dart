class Solution {
  bool divideArray(List<int> nums) 
  {
    nums.sort();
    for (int i = 0; i < nums.length;i+=2){
        if (nums[i]!=nums[i+1]){
        return false;
    }
    }
       return true;
   
  }
}
void main() {
  Solution solution = Solution();

  // Test Case 1: Even count, all pairs match
  print(solution.divideArray([3, 3, 2, 2, 1, 1])); // Output: true

  // Test Case 2: Odd count of elements
  print(solution.divideArray([1, 2, 3, 4, 5])); // Output: false

  
}
