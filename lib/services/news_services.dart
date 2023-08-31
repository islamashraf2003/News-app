import 'package:dio/dio.dart';
import 'package:news_app/Models/article_model.dart';

class NewsServices {
  final Dio dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      String apiKey = '7fa479042bff4f4daba79197bdfe2003';
      String baseUrl = 'https://newsapi.org/v2';
      String country = 'sa';

      Response response = await dio.get(
          '$baseUrl/top-headlines?apiKey=$apiKey&category=$category&country=$country');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articalsList = [];
      for (var artical in articles) {
        ArticleModel articleModel = ArticleModel(
            image: artical['urlToImage'],
            title: artical['title'],
            subTitle: artical['description']);
        articalsList.add(articleModel);
      }

      print(articalsList);
      return articalsList;
    } catch (e) {
      return [];
    }
  }
}
