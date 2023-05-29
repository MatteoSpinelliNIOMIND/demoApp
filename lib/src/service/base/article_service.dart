import '../../model/article.dart';

abstract class ArticleService {
  Future<List<Article>> getListArticle();
}
