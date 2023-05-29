import 'package:app/src/model/article.dart';
import 'package:app/src/service/local/article_local_servie.dart';
import 'package:app/src/service/remote/article_remote_servie.dart';

import 'di/di_repository.dart';

class HomeRepository {
  late final ArticleRemoteService _articleRemoteService;
  late final ArticleLocalService _articleLocalService;

  HomeRepository({
    ArticleRemoteService? articleRemoteService,
    ArticleLocalService? articleLocalService,
  }) {
    const serviceLocator = HomeRepositoryServiceLocator();
    _articleRemoteService =
        articleRemoteService ?? serviceLocator.getArticleRemoteService();
    _articleLocalService =
        articleLocalService ?? serviceLocator.getArticleLocalService();
  }

  Future<List<Article>> getListData() async {
    // TODO: implement offline first
    return await _articleRemoteService.getListArticle();
  }
}
