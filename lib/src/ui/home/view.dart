import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel.instance(),
      child: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.uiState.loading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          return Scaffold(
            body: RefreshIndicator(
              onRefresh: () => viewModel.refreshListData(),
              child: ListView.builder(
                itemCount: viewModel.uiState.listArticle.length,
                itemBuilder: (context, index) {
                  final article = viewModel.uiState.listArticle[index];
                  return ListTile(
                    onTap: () {},
                    title: Text(
                      article.title,
                    ),
                    subtitle: Text(article.description),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
