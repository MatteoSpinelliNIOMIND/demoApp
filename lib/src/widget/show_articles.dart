import 'package:app/src/data/article.dart';
import 'package:flutter/material.dart';

class ShowArticles extends StatelessWidget {
  ShowArticles(this.articles, this.selectArticle, this.refresh, {super.key});
  void Function(int) selectArticle;
  void Function() refresh;
  final List<Article> articles;
  @override
  Widget build(context) {
    return RefreshIndicator(
      onRefresh: () async {
        refresh();
      },
      child: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: articles.map((article) {
                return Listener(
                  onPointerDown: (event) {
                    selectArticle(articles.indexOf(article));
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      article.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
