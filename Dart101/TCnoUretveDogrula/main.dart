import 'dart:math';
void main() {
  String  name = '';
  name = CreateTcNo();
  print(name);
  print(CheckTcNo(name));
}

bool CheckTcNo(String tc){
  var tcNo = tc;
  int even =0;
  int odd = 0;
  int topTen=0;
  if(tcNo.length == 11) {
    if (int.parse(tcNo[0]) != 0) {
      for(int i=0; i < tcNo.length-2; i++){
          if(i % 2 == 0){
            even = even + (int.parse(tcNo[i]));

          }else {
            odd = odd + (int.parse(tcNo[i]));
          }
          topTen = topTen + int.parse(tcNo[i]);
      }
      var total = (even *7) - odd;
      topTen = topTen + int.parse(tcNo[9]);
      if(total %10 == int.parse(tcNo[9])){
       if(topTen %10 == int.parse(tcNo[10])) {
         return true;
       }
      }

    }
  }
  return false;
}

String CreateTcNo(){
  List<int> TcNo = [1,2,3,4,5,6,7,8,9,9,9];
  String tc="";
  var r;
  var even=0;
  var odd=0;
  var total =0;
  Random rnd = new Random();
  for(int i=0; i<9;i++){
    if(i == 0){
      r = 1 + rnd.nextInt(10 - 1);
      TcNo[i]= r;

    }else {
      r = 0 + rnd.nextInt(10 - 0);
      TcNo[i]= r;
    }

  }
  for(int i=0; i < TcNo.length-2; i++){
    if(i % 2 == 0){
      even = even + TcNo[i];

    }else {
      odd = odd + TcNo[i];
    }
    total = total + TcNo[i];
  }
  
  TcNo[9]= ((even *7)-odd)%10;
  TcNo[10]=(total + TcNo[9])%10;

  for(int i =0; i<TcNo.length; i++ ){
    tc =tc + TcNo[i].toString();

  }

  return tc;
}




