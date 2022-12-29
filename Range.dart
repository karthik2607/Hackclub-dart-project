import 'dart:io';
void printCounts(int n, List<String> data) {
  // Initialize counts for each range
  List<int> counts = List.filled(10, 0);

  // Iterate through the data
  for (String item in data) {
    // Split the name and number
    List<String> parts = item.split(":");
    String name = parts[0];
    int num = int.parse(parts[1]);
    
    if (num >= 0 && num <= 10) {
      counts[0]++;
    } else if (num >= 11 && num <= 20) {
      counts[1]++;
    } else if (num >= 21 && num <= 30) {
      counts[2]++;
    } else if (num >= 31 && num <= 40) {
      counts[3]++;
    } else if (num >= 41 && num <= 50) {
      counts[4]++;
    } else if (num >= 51 && num <= 60) {
      counts[5]++;
    } else if (num >= 61 && num <= 70) {
      counts[6]++;
    } else if (num >= 71 && num <= 80) {
      counts[7]++;
    } else if (num >= 81 && num <= 90) {
      counts[8]++;
    } else if (num >= 91 && num <= 100) {
      counts[9]++;
    }
  }

  // Print the counts for each range
  for (int i = 0; i < 10; i++) {
    print("${i * 10}-${i * 10 + 10} ${counts[i]}");
  }
}

void main() {
 // int n = 5;
 print("Enter the intger n");
  int? n=int.parse(stdin.readLineSync()!);
  List<String>data=[];
  for(int i=0;i<n;i++){
    String? a=stdin.readLineSync()!;
    data.add(a);

  }
  //List<String> data = [    "PersonA:35",    "PersonB:29",    "PersonC:76",    "PersonD:81",    "PersonE:12",  ];

  printCounts(n, data);
}
