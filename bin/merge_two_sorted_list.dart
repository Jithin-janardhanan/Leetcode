void main() {
  List<int> list1 = [1, 3, 2], list2 = [2, 6, 1];
  List<int> res = list1 + list2;
  int n = res.length;
  int i, j;
  int temp;

  for (i = 0; i < n -1; i++) {
    for (j = i + 1; j < n; j++) {
      if (res[i] > res[j]) {
        temp = res[i];
        res[i] = res[j];
        res[j] = temp;
      }
    }
  }
  print(res);
}
