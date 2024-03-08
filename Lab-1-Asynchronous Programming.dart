import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Exercise 1: Implement an asynchronous function that simulates a network call and returns a random quote after a delay.
Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt"
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

// Exercise 2: Create a program that downloads a file from a URL using the http package in Dart.
Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully!');
  } else {
    print('Error downloading file: ${response.statusCode}');
  }
}

// Exercise 3: Develop a program that simulates loading data from a database asynchronously.
Future<List<String>> fetchDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> data = ['Data 1', 'Data 2', 'Data 3'];
  return data;
}

// Exercise 4: Implement a program that fetches weather data from an API using asynchronous functions.
Future<Map<String, dynamic>> fetchWeatherData() async {
  String apiKey = 'your_api_key';
  String city = 'your_city_name';
  String url = 'https://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city';

  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  // Exercise 1: Implement an asynchronous function that simulates a network call and returns a random quote after a delay.
  print('Exercise 1: Fetching a random quote');
  String quote = await fetchQuote();
  print("Random Quote: $quote");
  print("");

  // Exercise 2: Create a program that downloads a file from a URL using the http package in Dart.
  print('Exercise 2: Downloading a file');
  String url = 'https://example.com/file.txt';
  String savePath = 'path/to/save/file.txt';
  await downloadFile(url, savePath);
  print("");

  // Exercise 3: Develop a program that simulates loading data from a database asynchronously.
  print('Exercise 3: Loading data from a database');
  List<String> data = await fetchDataFromDatabase();
  print('Data loaded: $data');
  print("");

  // Exercise 4: Implement a program that fetches weather data from an API using asynchronous functions.
  print('Exercise 4: Fetching weather data');
  try {
    Map<String, dynamic> weatherData = await fetchWeatherData();
    double temperature = weatherData['current']['temp_c'];
    String condition = weatherData['current']['condition']['text'];

    print('Temperature: $temperature°C');
    print('Condition: $condition');
  } catch (e) {
    print('Error: $e');
  }
}
