// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/Models/article_model.dart';

// import '../services/news_services.dart';
// import 'category_newsList.dart';

// class NewsListVeiewCards extends StatefulWidget {
//   const NewsListVeiewCards({
//     super.key,
//   });

//   @override
//   State<NewsListVeiewCards> createState() => _NewsListVeiewCardsState();
// }

// class _NewsListVeiewCardsState extends State<NewsListVeiewCards> {
//   List<ArticleModel> articlsData = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     final newsData = await NewsServices().getNews();
//     setState(() {
//       articlsData = newsData;
//     });
//     isLoading = false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articlsData.length,
//                 (context, index) {
//             return CategoryNews(
//               articleModel: articlsData[index],
//             );
//           }));
//   }

// }
//////////////////////////////////////
// import 'package:dio/dio.dart';
// import 'package:news_app/Models/article_model.dart';

// class NewsServices {
//   final Dio dio = Dio();
// //7fa479042bff4f4daba79197bdfe2003
//   Future<List<ArticleModel>> getNews() async {
//     final String apiKey = '7fa479042bff4f4daba79197bdfe2003';
//     final String baseUrl = 'https://newsapi.org/v2';
//     final String country = 'us';
//     final String category = 'general';

//     Response response = await dio.get(
//         '$baseUrl/top-headlines?apiKey=$apiKey&category=$category&country=$country');
//     Map<String, dynamic> jsonData = response.data;
//     List<dynamic> articles = jsonData['articles'];

//     List<ArticleModel> articalsList = [];
//     for (var artical in articles) {
//       ArticleModel articleModel = ArticleModel(
//           image: artical['urlToImage'],
//           title: artical['title'],
//           subTitle: artical['description']);
//       articalsList.add(articleModel);
//     }
//     print(articalsList);
//     return articalsList;
//   }
// }
