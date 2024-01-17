import 'package:news_nepal/models/news_model.dart';

abstract class NewsRepo{
  Future<List<NewsModel>> getAllNewsFromApi();

}