import 'dart:io';

void main(){
  int positiveNumber;
  do{
    print(" Enter a positive number: ");
    positiveNumber = int.parse(stdin.readLineSync()!);
    if(positiveNumber==0){
      print(" Program stopped. ");
      break;
    }
    if(positiveNumber < 0){
      print(" Please enter a positive number. ");
    }
  }while(positiveNumber <= 0);
  if(positiveNumber > 0){
    print(" You entered a positive number: $positiveNumber");
  }
}