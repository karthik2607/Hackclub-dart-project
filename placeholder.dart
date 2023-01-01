//import 'dart:io';
// import 'package:http/http.dart';

// void main() async {
//   // Make a GET request to the JSONPlaceholder API
//   http.Response response = await http.get('https://jsonplaceholder.typicode.com/todos/1');

//   // Print the response
//   print(response.body);
// }
import 'dart:convert';
import 'dart:io';

void main() async {
  // Make a GET request to the JSONPlaceholder API
  HttpClient client = HttpClient();
  HttpClientRequest request = await client.getUrl(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  HttpClientResponse response = await request.close();

  // Read the response as a string
  String responseBody = await response.transform(utf8.decoder).join();

  // Print the response
  print(responseBody);

  // Close the client
  client.close();
}

