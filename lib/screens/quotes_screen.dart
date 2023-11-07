import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:joker/services/networking.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  var author = 'author';
  var quote = 'quote';

  // void fetchData() async {
  //   try {
  //     final url = Uri.parse('https://api.api-ninjas.com/v1/quotes');
  //     var response = await http.get(
  //       url,
  //       headers: {'X-Api-Key': 'l9yOupI+dbRSIpD2TxpJag==x2NKY2x2tWhU3txY'},
  //     );

  //     if (response.statusCode >= 400) {
  //       print(response.statusCode);
  //     }
  //     final decodedData = jsonDecode(response.body);
  //     print(decodedData);

  //     setState(() {
  //       data = decodedData[0]['quote'];
  //       author = decodedData[0]['author'];
  //     });
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   final fetchedData = networking.fetchData();
  // }

  void generateQuote() {
    // I want to create a void method that gets called when i tap on the button
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quotes Generator',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Author : $author',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  quote,
                  style: const TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 2,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white),
                onPressed: () {
                  // setState(() {
                  //   author = quoteMap['author'];
                  //   quote = quoteMap['quote'];
                  // });
                  print('object');
                },
                child: const Text(
                  'Generate a quote !',
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ));
  }
} 
// i want to have data as soon as my app loads for the first time, so 