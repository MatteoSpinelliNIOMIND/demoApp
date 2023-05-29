import 'package:app/src/model/article.dart';
import 'package:app/src/service/remote/article_remote_servie.dart';
import 'package:app/src/ui/home/repository.dart';
import 'package:test/test.dart';

class FakeArticleRemoteService implements ArticleRemoteService {
  @override
  Future<List<Article>> getListArticle() async {
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
    ];
  }
}

void main() {
  final fakeArticleRemoteService = FakeArticleRemoteService();

  test(
    'Test HomeRepository',
    () async {
      final homeRepository = HomeRepository(
        articleRemoteService: fakeArticleRemoteService,
      );

      final result = await homeRepository.getListData();
      print({"result.length": result.length});
      expect(result.length, 4);
    },
  );
}
