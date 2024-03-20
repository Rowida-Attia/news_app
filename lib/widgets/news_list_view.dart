import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_tile.dart';
import 'package:dio/dio.dart';

class NewslistView extends StatelessWidget {
  final List<ArticleModel> articles;

  NewslistView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return newsTile(
          articleModel: articles[index],
        );
      },
    ));
  }
}
