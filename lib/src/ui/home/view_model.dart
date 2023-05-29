import 'dart:async';

import 'package:app/src/model/article.dart';
import 'package:app/src/ui/home/di/di_view_model.dart';
import 'package:app/src/ui/home/repository.dart';
import 'package:app/src/ui/home/ui_state.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  late final HomeRepository _repository;

  final HomeUiState _uiState = HomeUiState();
  HomeUiState get uiState => _uiState;

  HomeViewModel.instance({HomeRepository? repository}) {
    const serviceLocator = HomeViewModelServiceLocator();
    _repository = repository ?? serviceLocator.getHomeRepository();
    _uiState.loading = true;
    refreshListData();
  }

  void syncListArticle() {
    if (_repository.listArticle != _uiState.listArticle) {
      _uiState.listArticle = _repository.listArticle;
      notifyListeners();
    }
    _repository.syncData();
  }

  Future<void> refreshListData() async {
    _uiState.loading = true;
    notifyListeners();
    _uiState.listArticle = _repository.listArticle;
    _uiState.loading = false;
    notifyListeners();
  }
}
