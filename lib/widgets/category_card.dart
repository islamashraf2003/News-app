import 'package:flutter/material.dart';

import '../Models/categort_model.dart';
import '../pages/topics_page.dart';

class CategoryCard extends StatelessWidget {
  @override
  final CategoryModel card;

  const CategoryCard({super.key, required this.card});
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return NewsTopics(
              category: card.name,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 14, left: 8),
        child: Container(
          width: 180,
          height: 165,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(
              image: AssetImage(card.image),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
              child: Text(
            '${card.name}',
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
