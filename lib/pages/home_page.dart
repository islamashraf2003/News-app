import 'package:flutter/material.dart';

import '../widgets/custom_listView.dart';
import '../widgets/new_ListView_buldier.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: const [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 31,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'App',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          )),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 6,
            ),
          ),
          SliverToBoxAdapter(
            //convert widget to Sliver
            child: CategoryListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 13,
            ),
          ),
          //recent news
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'Recent News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          NewListViewBuldier(
            categoryName: 'general',
          ),
        ],
      ),
    );
  }
}
