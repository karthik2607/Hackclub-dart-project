import 'dart:io';
//import 'dart:math';
void main(){
  //Reading input line as a string
  print("Enter the numbers");
  String? input=stdin.readLineSync();
  //splitting input line into list of strings
  List<String> numbers =input!.split(' ');
  // Convert the list of strings to a list of integers
  List<int>integers=numbers.map((String)=>int.parse(String)).toList();
  integers.sort();
  print(integers.last);
  
}