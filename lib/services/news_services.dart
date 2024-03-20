import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    //b3mel request
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2a08ba424ce84ca8a9de4191d4e3837a&category=$category');
      //ماب عشان الداتا الي جايه ماب
      // bast2ble elbinat
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];
      //بحول كل mapلي object
      List<ArticleModel> articlesList = [];

      // b7wel elbianat l listOfArticles
      for (var article in articles) {
        // json 3shan yft7 link
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
