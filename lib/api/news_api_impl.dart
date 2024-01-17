import 'dart:convert';

import 'package:news_nepal/api/news_api.dart';
import 'package:news_nepal/models/news_model.dart';
import 'package:http/http.dart' as http;

class NewsApiImpl extends NewsApi {
  @override
  Future<List<NewsModel>> getAllNewsFromApi() async {
    http.Response response = await http.get(Uri.parse(
        "https://raw.githubusercontent.com/gari-ma/rest-api/main/news.json"));
    List<Map<String, dynamic>> list =
        List<Map<String, dynamic>>.from(json.decode(response.body));
    return list.map((item) {
      return NewsModel.fromJson(item);
    }).toList();
  }
}
