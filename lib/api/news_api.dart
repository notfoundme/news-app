import 'package:news_nepal/models/news_model.dart';

abstract class NewsApi {
  Future<List<NewsModel>> getAllNewsFromApi();
}
