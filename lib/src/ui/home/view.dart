import 'package:app/src/data/article.dart';
import 'package:app/src/ui/home/repository.dart';
import 'package:app/src/widget/show_articles.dart';
import 'package:app/src/widget/zoom_article.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<Article> articles = [];
  int articleSelected = -1;

  void selectArticle(int index) {
    setState(() {
      articleSelected = index;
    });
  }

  void refresh() {
    setState(() {
      articles = [];
    });
    getArticles();
  }

  void getArticles() async {
    var getArticles = await ArticlesRepository().getData();
    setState(() {
      articles = getArticles;
    });
  }

  _HomeState() {
    getArticles();
  }
  @override
  Widget build(context) {
    return SizedBox(
      child: articles.isNotEmpty
          ? articleSelected == -1
              ? ShowArticles(articles, selectArticle, refresh)
              : ZoomArticle(articles[articleSelected].title,
                  articles[articleSelected].description, selectArticle)
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
