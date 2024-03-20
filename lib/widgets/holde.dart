/*import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_tile.dart';
import 'package:dio/dio.dart';

class NewslistView extends StatefulWidget {
  const NewslistView({
    super.key,
  });

  @override
  State<NewslistView> createState() => _NewslistViewState();
}

class _NewslistViewState extends State<NewslistView> {
  List<ArticleModel> articles = [];
  @override
  bool isLoading = true;
  void initState() {
    // TODO: implement initState
    super.initState();
    //b3mel request bsta5dem elbianat
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
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
-*/