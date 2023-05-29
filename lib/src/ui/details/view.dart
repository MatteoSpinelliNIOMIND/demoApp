import 'package:flutter/material.dart';

class ArticleView extends StatelessWidget {
  final String articleId;

  const ArticleView({
    super.key,
    required this.articleId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Description",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(articleId),
            // Text(title),
            // Text(description),
          ],
        ),
      ),
    );
  }
}
