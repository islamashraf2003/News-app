import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/categort_model.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> cardList = const [
    CategoryModel(image: 'assets/images/business2.jpg', name: 'Business'),
    CategoryModel(
        image: 'assets/images/entertaiment2.jpg', name: 'Entertainment'),
    CategoryModel(image: 'assets/images/health3.jpg', name: 'Health'),
    CategoryModel(image: 'assets/images/science3.jpg', name: 'Science'),
    CategoryModel(image: 'assets/images/sports.jpg', name: 'Sports'),
    CategoryModel(image: 'assets/images/technology2.jpg', name: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: cardList.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              card: cardList[index],
            );
          }),
    );
  }
}
