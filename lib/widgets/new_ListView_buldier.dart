import 'package:flutter/material.dart';

import '../Models/article_model.dart';
import '../services/news_services.dart';
import 'custom_newsListView.dart';

class NewListViewBuldier extends StatefulWidget {
  const NewListViewBuldier({super.key, required this.categoryName});
  final String categoryName;
  @override
  State<NewListViewBuldier> createState() => _NewListViewBuldierState();
}

class _NewListViewBuldierState extends State<NewListViewBuldier> {
  @override
  var future;
  void initState() {
    super.initState();
    future = NewsServices().getNews(category: widget.categoryName);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListVeiewCards(
              articlsData: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Oops, an error occurred!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(height: 8.0),
                      Text(
                        'Loading...',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }
}
