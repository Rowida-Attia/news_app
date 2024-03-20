import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/category_card.dart';
import 'package:news/widgets/list_view.dart';
import 'package:news/widgets/news_list_view.dart';
import 'package:news/widgets/news_list_view_builder.dart';
import 'package:news/widgets/news_tile.dart';
import 'package:dio/dio.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: listView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 30),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          )),
    );
  }
}
