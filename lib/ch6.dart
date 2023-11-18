//Problem leetCode 242. Valid Anagram

void main() {
  var str1 = "anagram";
  var str2 = "nagaram";
  print("Given String is an anagram is : ${isValidAnagram(str1, str2)}");
}

bool isValidAnagram(String str1, String str2) {
  List<String> chArr1 = str1.split("");
  List<String> chArr2 = str2.split("");
  chArr1.sort();
  chArr2.sort();
  if (chArr1.length != chArr2.length)
    return false;
  else {
    for (int i = 0; i < chArr1.length; ) {
      if (chArr1[i] != chArr2[i]) {
        return false;
      }else{
        return true;
      }
    }
  }
  return false;
}
