import 'dart:convert';
import 'package:http/http.dart' as http;

class Networking {
  Networking();
  var author = 'nobody';
  var data = 'no quotes yet';

  Future<Map<String, dynamic>> fetchData() async {
    final url = Uri.parse('https://api.api-ninjas.com/v1/quotes');
    var response = await http.get(url,
        headers: {'X-Api-Key': 'l9yOupI+dbRSIpD2TxpJag==x2NKY2x2tWhU3txY'});

    if (response.statusCode >= 400) {
      print(response.statusCode);
    }
    final Map<String, dynamic> decodedData = jsonDecode(response.body)[0];
    return decodedData;
  }

  // Future<List> getPopularMovies() async {
  //   try {
  //     final popularMoviesList = await networking.getPopularMoviesList();
  //     data = popularMoviesList;
  //     return popularMoviesList;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}

final networking = Networking();
