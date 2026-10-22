void main(){
  for(int i = 1; i<=30; i++){
    if(i == 25){
      break;
    }
    if(i%3==0){
      continue;
    }
    print(i);
  }
}