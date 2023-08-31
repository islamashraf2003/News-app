import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

import '../services/news_services.dart';
import 'category_newsList.dart';

class NewsListVeiewCards extends StatelessWidget {
  final List<ArticleModel> articlsData;

  NewsListVeiewCards({super.key, required this.articlsData});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articlsData.length,
            (context, index) {
      return CategoryNews(
        articleModel: articlsData[index],
      );
    }));
  }
}
