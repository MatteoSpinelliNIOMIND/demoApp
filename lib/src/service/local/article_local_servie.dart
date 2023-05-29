import 'package:app/src/model/article.dart';

import '../base/article_service.dart';

class ArticleLocalService extends ArticleService {
  @override
  Future<List<Article>> getListArticle() async {
    return await Future.delayed(
      const Duration(milliseconds: 50),
      () {
        return [
          Article(
            articleId: '1',
            date: 1,
            description: 'Description 1',
            title: 'Title 1',
          ),
          Article(
            articleId: '2',
            date: 2,
            description: 'Description 2',
            title: 'Title 2',
          ),
          Article(
            articleId: '3',
            date: 3,
            description: 'Description 3',
            title: 'Title 3',
          ),
          Article(
            articleId: '4',
            date: 4,
            description: 'Description 4',
            title: 'Title 4',
          ),
          Article(
            articleId: '5',
            date: 5,
            description: 'Description 5',
            title: 'Title 5',
          ),
        ];
      },
    );
  }
}
