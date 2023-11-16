//Array contain duplicate no.
void main() {
  List<int> nums = [1, 2, 3, 4];
  print(
      "Given Array :$nums Contain Duplicate No is:  ${containDuplicate(nums)}");
  print(
      "Given Array :$nums Contain Duplicate No is:  ${containDuplicateByBruteForce(nums)}");
}

//time complexity =O(n)
bool containDuplicate(List<int> arr) {
  if (arr.toSet().length == arr.length)
    return false;
  else
    return true;
}

//time complexity =O(n^2)
bool containDuplicateByBruteForce(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if(arr[i] ==arr[j]) return true;
    }
  }
  return false;
}
