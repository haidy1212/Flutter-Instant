int findMaximum(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("The list cannot be empty");
  }
  int max = numbers[0];
  for (int n in numbers) {
    if (n > max) {
      max = n;
    }
  }
  return max;
}
void main() {
  List<int> nums = [12, 52, 30, 14, 5];
  print("numbers: $nums");
  int result = findMaximum(nums);
  print("maximum: $result");
}