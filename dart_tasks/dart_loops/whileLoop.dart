import 'dart:io';

void main(){
  print("\n Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  int counter = 1;
  while(counter <=12){
    if(counter == 10){
      break;
    }
    if(counter == 5){
      counter++;
      continue;
    }
    print("$num x $counter = ${num*counter}");
    counter++;
  }
}