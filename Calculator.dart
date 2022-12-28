import'dart:io';
calculate(int a,int b,var opt){
    if(opt=='+'){return(a+b);}
    else if(opt=='-'){return(a-b);}
    else if(opt=='*'){return(a*b);}
    else if(opt=='/'){return(a/b);}
}
void main(){
    print("Enter first number");
    int? a=int.parse(stdin.readLineSync()!);
    print("Enter second number");
    int? b=int.parse(stdin.readLineSync()!);
    print("Enter the operation +/-*");
    var op=stdin.readLineSync();
    
    int out=calculate(a,b,op);
    print("The output is");
    print(out);
}