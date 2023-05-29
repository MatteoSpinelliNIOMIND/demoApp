import '../../model/article.dart';

class HomeUiState {
  List<Article> listArticle = [];
  bool loading = false;
  bool error = false;
  String errorMessage = '';
}
