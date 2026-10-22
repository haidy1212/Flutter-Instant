import 'dart:io';

void main(){
  print("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync()!);
 print("\n Choose an operation to perform: ");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");
  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch(choice){
    case 1:
      result = num1 + num2;
      print("The sum of $num1 and $num2 is: $result");
      break;
    case 2:
      result = num1 - num2;
      print("The difference between $num1 and $num2 is: $result");
      break;
    case 3:
      result = num1 * num2;
      print("The product of $num1 and $num2 is: $result");
      break;
    case 4:
      if(num2 != 0){
        result = num1 / num2;
        print("The quotient of $num1 and $num2 is: $result");
      }else{
        print("Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid choice. Please select a valid operation.");
  }
}