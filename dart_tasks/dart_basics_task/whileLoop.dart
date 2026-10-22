void main(){
  print("\n numbers from 1 to 20 are: ");
  int i = 0;
  while(i<20){
    i++;
    if (i%3==0){
      continue;
    }
    if (i==15){
      break;
    }
    print(i);
  }
}