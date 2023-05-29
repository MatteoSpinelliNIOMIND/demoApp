import 'package:app/src/model/article.dart';
import 'package:app/src/service/local/article_local_servie.dart';
import 'package:app/src/service/remote/article_remote_servie.dart';
import 'package:app/src/ui/home/view_model.dart';

import 'di/di_repository.dart';

class HomeRepository {
  late final ArticleRemoteService _articleRemoteService;
  late final ArticleLocalService _articleLocalService;
  List<Article> listArticle = [];

  HomeRepository({
    ArticleRemoteService? articleRemoteService,
    ArticleLocalService? articleLocalService,
  }) {
    const serviceLocator = HomeRepositoryServiceLocator();
    _articleRemoteService =
        articleRemoteService ?? serviceLocator.getArticleRemoteService();
    _articleLocalService =
        articleLocalService ?? serviceLocator.getArticleLocalService();
    getListData();
  }

  Future<void> syncData() async {
    listArticle = await _articleRemoteService.getListArticle();
  }

  Future<void> getListData() async {
    // TODO: implement offline first
    syncData();
    listArticle = await _articleLocalService.getListArticle();
  }
}
