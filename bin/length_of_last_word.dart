class Solution {
  int lengthOfLastWord(String s) {
    s = s.trim(); 
    List<String> words = s.split(" "); 
    return words.isNotEmpty ? words.last.length : 0; 
  }
}

void main() {
  Solution solution = Solution();
  print(solution.lengthOfLastWord("Hello World")); 
  print(solution.lengthOfLastWord("   fly me   to   the moon  ")); 
  print(solution.lengthOfLastWord("luffy is still joyboy")); 
}