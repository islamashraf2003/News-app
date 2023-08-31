import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/topics_page.dart';
import 'package:news_app/services/news_services.dart';

import 'Models/categort_model.dart';

void main() {
  NewsServices news = NewsServices();
  news.getNews(category: 'general');
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
