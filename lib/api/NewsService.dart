import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/model/NewsModel.dart';

class NewsService {
  late List<NewsModel> newsList;

  Future<void> getNews() async {
    var client = http.Client();

    Map<String, String> requestHeaders = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'x-api-key': '9446542463ad4226b117af0a3cc035ce'
    };

    try {
      var response = await client.get(
          Uri.https('newsapi.org', '/v2/everything', {
            'q': 'a',
            'pageSize': '10',
            'page': '1'
          }), headers: requestHeaders);
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;

      List list = decodedResponse['articles'];
      newsList = list.map((e) => NewsModel.fromJson(e)).toList();
      print(newsList.toString());
    } finally {
      client.close();
    }
  }
}
