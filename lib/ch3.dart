//is Given number is Prime


void main() {
  int num = 11;
  print("number $num is ${isPrimeNo(num) == true ? "Prime" : "Not Prime"}");
}
//Time complexity:  O(n)
// Space complexity: O(1)
bool isPrimeNo(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i < num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
