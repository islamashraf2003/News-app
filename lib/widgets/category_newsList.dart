import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';

import '../pages/data_news_page.dart';

class CategoryNews extends StatelessWidget {
  CategoryNews({super.key, required this.articleModel});
  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DataNews(
              articleModel: articleModel,
            );
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Container(
          height: 130,
          margin: EdgeInsets.only(bottom: 15),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(26),
          ),
          child: Row(children: [
            articleModel.image != null
                ? Flexible(
                    flex: 3,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage('${articleModel.image}'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  )
                : Flexible(
                    flex: 3,
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/noImage.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
            const SizedBox(
              width: 12,
            ),
            Flexible(
              flex: 5,
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    articleModel.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 9.0,
                  ),
                  Text(
                    articleModel.subTitle ?? "",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
