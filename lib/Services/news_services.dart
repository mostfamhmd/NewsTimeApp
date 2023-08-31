import 'package:dio/dio.dart';
import 'package:news_time/Model/news_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<NewsModel>> getNews({required String category}) async {
    List<NewsModel> newsdata = [];
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=f003149754474f69aa5b39a271ddacf3&category=$category");
      Map<String, dynamic> jsondata = response.data;

      List<dynamic> articles = jsondata["articles"];

      for (var article in articles) {
        NewsModel newsitems = NewsModel(
          image: article["urlToImage"],
          title: article["title"],
          description: article["description"],
          publishedAt: article["publishedAt"],
          content: article["content"],
          url: article["url"],
        );
        newsdata.add(newsitems);
      }
    } catch (e) {}
    return newsdata;
  }
}
