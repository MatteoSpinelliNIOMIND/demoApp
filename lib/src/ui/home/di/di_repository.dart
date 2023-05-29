import '../../../service/local/article_local_servie.dart';
import '../../../service/remote/article_remote_servie.dart';

class HomeRepositoryServiceLocator {
  const HomeRepositoryServiceLocator();

  ArticleRemoteService getArticleRemoteService() {
    return ArticleRemoteService();
  }

  ArticleLocalService getArticleLocalService() {
    return ArticleLocalService();
  }
}
