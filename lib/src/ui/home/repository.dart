import 'package:app/src/data/article.dart';

class ArticlesRepository {
  Future<List<Article>> getData() {
    return Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        return [
          Article("Titolo 1", "Description 1"),
          Article("Titolo 2", "Description 1"),
          Article("Titolo 3", "Description 1"),
          Article("Titolo 4", "Description 1"),
          Article("Titolo 5", "Description 5"),
          Article("Titolo 6", "Description 6"),
          Article("Titolo 7", "Description 7"),
          Article("Titolo 8", "Description 8"),
          Article("Titolo 9", "Description 9"),
          Article("Titolo 10", "Description 10"),
          Article("Titolo 11", "Description 1"),
          Article("Titolo 12", "Description 1"),
          Article("Titolo 13", "Description 1"),
          Article("Titolo 14", "Description 1"),
          Article("Titolo 15", "Description 1"),
          Article("Titolo 16", "Description 1"),
          Article("Titolo 17", "Description 1"),
        ];
      },
    );
  }
}
