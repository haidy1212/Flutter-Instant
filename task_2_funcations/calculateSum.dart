int calculateSum(List<int> numbers) {
  int sum = 0;
  for (int n in numbers) {
    sum += n;
  }
  return sum;
}
void main(){
  List<int> nums = [1, 2, 3, 4, 5];
  print("numbers: $nums");
  int result = calculateSum(nums);
  print("sum: $result");
}