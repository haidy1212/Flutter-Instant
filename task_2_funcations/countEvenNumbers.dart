int countEvenNumbers(List<int> numbers) {
  int count = 0;
  for (int n in numbers) {
    if (n % 2 == 0) {
      count++;
    }
  }
  return count;
}
void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6];
  print("numbers: $nums");
  int result = countEvenNumbers(nums);
  print("count of even numbers: $result");
}