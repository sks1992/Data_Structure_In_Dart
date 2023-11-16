// ignore: slash_for_doc_comments
/***
    42. Trapping Rain Water
    Given n non-negative integers representing an elevation map where the width of
    each bar is 1, compute how much water it can trap after raining.

    Example 1:
    Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
    Output: 6

    Explanation: The above elevation map (black section) is represented by
    array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water
    (blue section) are being trapped.

    Example 2:
    Input: height = [4,2,0,3,2,5]
    Output: 9


    Constraints:

    n == height.length
    1 <= n <= 2 * 104
    0 <= height[i] <= 105
 * **/

void main() {
  List<int> heights = [4,2,0,3,2,5];
  print(trap(heights));
}

int trap(List<int> heightData) {
  //condition when there is no  element is an array
  if (heightData.isEmpty) {
    return 0;
  }
  int left = 0;
  int right = heightData.length - 1;

  int maxL = heightData[left];
  int maxR = heightData[right];

  int sum = 0;
  //0 12
  while (left < right) {
    //0  1
    if (maxL <= maxR) {
      left++;
      final r = maxL - heightData[left];
      if (r > 0) {
        sum += r;
      } else {
        maxL = heightData[left];
      }
    } else {
      right--;
      final r = maxR - heightData[right];
      if (r > 0) {
        sum += r;
      } else {
        maxR = heightData[right];
      }
    }
  }

  return sum;
}
