import 'dart:io';

void main() {
  int choice = 0;
  while (choice != 11) {
    print("\n===========================================");
    print("Dart program");
    print("===========================================");
    print("1. sum of even numbers");
    print("2. largest of 3 numbers");
    print("3. multiplication table");
    print("4. reverse of a number");
    print("5. count of digits");
    print("6. prime number checker");
    print("7. number guessing game");
    print("8. grade evaluation");
    print("9. pattern printing");
    print("10. atm menu");
    print("11. Exit");
    print("===========================================");
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
        case 1:
          print("\n====Sum of even numbers====");
          stdout.write("Enter a number: ");
          int n = int.parse(stdin.readLineSync()!);
          int sum = 0;
          for (int i = 1; i <= n; i++) {
            if (i % 2 == 0) {
              sum += i;
            }
          }
          print("Sum of even numbers: $sum");
        break;
        case 2:
          print("\n====Largest of 3 numbers====");
          stdout.write("Enter first number: ");
          double a = double.parse(stdin.readLineSync()!);
          stdout.write("Enter second number: ");
          double b = double.parse(stdin.readLineSync()!);
          stdout.write("Enter third number: ");
          double c = double.parse(stdin.readLineSync()!);
          if (a==b && b==c){
            print("All numbers are equal");
          } else if (a>=b && a>=c){
            print("Largest number is: $a");
          } else if (b>=a && b>=c){
            print("Largest number is: $b");
          } else {
            print("Largest number is: $c");
          }
        break;
        case 3: 
          print("\n====Multiplication Table====");
          stdout.write("Enter a number: ");
          int n = int.parse(stdin.readLineSync()!);
          for (int i = 1; i <= 12; i++) {
            print("$n x $i = ${n * i}");
          }
        break;
        case 4:
          print("\n====Reverse of a number====");
          stdout.write("Enter a integer: ");
          int n = int.parse(stdin.readLineSync()!);
          int original = n;
          int reverse = 0;
          while (n != 0) {
            int digit = n % 10;
            reverse = reverse * 10 + digit;
            n ~/= 10;
          }
          if (original<0){
            reverse = -reverse;
          }
          print("Reverse of the number: $reverse");
        break;
        case 5:
          print("\n====Count of digits====");
          stdout.write("Enter a integer: ");
          int n = int.parse(stdin.readLineSync()!);
          n = n.abs(); 
          int count = 0;
          if (n == 0) {
            count = 1;
          } else {
            while (n != 0) {
              n ~/= 10;
              count++;
            }
          }
          print("Count of digits: $count");
        break;
        case 6:
          print("\n====Prime number checker====");
          stdout.write("Enter a positive number: ");
          int n = int.parse(stdin.readLineSync()!);
          bool isPrime = true;
          if (n < 2) {
            isPrime = false;
          } else {
            for (int i = 2; i < n; i++) {
              if (n % i == 0) {
                isPrime = false;
                break;
              }
            }
          }
          if (isPrime) {
            print("$n is a prime number.");
          } else {
            print("$n is not a prime number.");
          }
        break;
        case 7:
            print("\n====Number guessing game====");
            int secretNumber = 15; 
            int guess = 0;
            int attempts = 0;
            while (guess != secretNumber) {
                stdout.write("Guess the number (between 1 and 20): ");
                guess = int.parse(stdin.readLineSync()!);
                attempts++;
                if (guess < secretNumber) {
                print("Too low! Try again.");
                } else if (guess > secretNumber) {
                print("Too high! Try again.");
                } else {
                print("Congratulations! You guessed the number.");
                }
            }
        break;
        case 8:
            print("\n====Grade evaluation====");
            stdout.write("Enter marks (0-100): ");
            int marks = int.parse(stdin.readLineSync()!);
            if (marks < 0 || marks > 100) {
                print("Invalid marks. Please enter a value between 0 and 100.");
            }else if(marks<=100&&marks>=90){
                print("grade is A");
            }else if(marks<=89&&marks>=80){
                print("grade is B");
            }else if(marks<=79&&marks>=70){
                print("grade is C");
            }else if(marks<=69&&marks>=60){
                print("grade is D");
            }else if(marks<=59&&marks>=50){
                print("grade is F");
            }else{
                print("error");
            }
        break;
        case 9:
            print("\n====Pattern printing====");
            stdout.write("Enter number of rows: ");
            int rows = int.parse(stdin.readLineSync()!);
            for (int i = 1; i <= rows; i++) {
                for (int j = 1; j <= i; j++) {
                    stdout.write("* ");
                }
                print("");
            }
        break;
        case 10:        
            print("\n====ATM menu====");
            double balance = 1000.0; 
            int atmChoice = 0;
            while (atmChoice != 4) {
                print("\nATM Menu:");
                print("1. Check Balance");
                print("2. Deposit Money");
                print("3. Withdraw Money");
                print("4. Exit");
                print("===========================================");
                stdout.write("Enter your choice: ");
                atmChoice = int.parse(stdin.readLineSync()!);
                switch (atmChoice) {
                    case 1:
                        print("Current Balance: $balance");
                    break;
                    case 2:
                        stdout.write("Enter amount to deposit: ");
                        double depositAmount = double.parse(stdin.readLineSync()!);
                        if (depositAmount > 0) {
                            balance += depositAmount;
                            print("Deposit successful.");
                            print("New Balance: $balance");
                        } else {
                            print("Invalid deposit amount.");
                        }
                    break;
                    case 3:
                        stdout.write("Enter amount to withdraw: ");
                        double withdrawAmount = double.parse(stdin.readLineSync()!);
                        if (withdrawAmount > 0 && withdrawAmount <= balance) {
                            balance -= withdrawAmount;
                            print("Withdrew: $withdrawAmount");
                            print("New Balance: $balance");
                        } else {
                            print("Invalid withdrawal amount or insufficient funds.");
                        }
                    break;
                    case 4:
                        print("Thank you for using the ATM.");
                    break;
                    default:
                        print("Invalid choice. Please try again.");
                }
            }
        break;
        case 11:
            print("Exiting the program. Goodbye!");
        break;
        default:
            print("Invalid choice. Please choose from 1 to 11.");
    }
  }
}
