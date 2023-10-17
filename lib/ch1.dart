///     How to reverse a string In Dart
void main() {
  String str = "Sandeep Kumar";
  reverseAStringUsingBuildInFunction(str);
  // String reversedString = reverseAStringUsingLoop(str);
  // print(reversedString);

  // String reversedString = reverseStringUsingRecursion(str);
  // print(reversedString);
}

//Time Complexity => O(n)
//Space Complexity => O(n)
void reverseAStringUsingBuildInFunction(String str) {
  List<String> revStr = str.split('');
  var revString = revStr.reversed.join();
  print(revString);
}

//Time Complexity => O(n)
//Space Complexity => O(n)
String reverseAStringUsingLoop(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}

//Time Complexity => O(n)
//Space Complexity => O(n)
String reverseStringUsingRecursion(String input) {
  if (input.isEmpty) {
    return input;
  }
  return reverseStringUsingRecursion(input.substring(1)) + input[0];
}
