import 'package:flutter/material.dart';

import '../widgets/new_ListView_buldier.dart';

class NewsTopics extends StatelessWidget {
  final String category;

  const NewsTopics({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.orange),
          ),
          NewListViewBuldier(
            categoryName: category,
          ),
        ],
      ),
    );
  }
}
