import 'package:news_nepal/api/news_api.dart';
import 'package:news_nepal/models/news_model.dart';
import 'package:news_nepal/repo/news_repo.dart';

class NewsRepoImpl implements NewsRepo {
  final NewsApi newsApi;

  NewsRepoImpl(this.newsApi);

  @override
  Future<List<NewsModel>> getAllNewsFromApi() async {
    try {
      List<NewsModel> newsList = await newsApi.getAllNewsFromApi();
      return newsList;
    } catch (e) {
      return []; 
    }
  }
}


