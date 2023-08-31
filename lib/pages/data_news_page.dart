import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

class DataNews extends StatelessWidget {
  DataNews({super.key, required this.articleModel});
  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.amber),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              articleModel.title,
              style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          articleModel.image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(articleModel.image!),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset('assets/images/noImage.jpg'),
                ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              articleModel.subTitle ?? "There is no description of the news",
              style: const TextStyle(
                fontSize: 19,
                color: Color.fromARGB(255, 51, 47, 47),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}
