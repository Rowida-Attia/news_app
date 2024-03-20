import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticleModel> articles = [];
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return NewslistView(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text('opps there was an error, try later'),
            );
          } else {
            return SliverToBoxAdapter(
                child: Center(
              child: CircularProgressIndicator(),
            ));
          }
        }));
  }
}
