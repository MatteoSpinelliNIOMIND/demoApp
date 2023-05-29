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

  Future<void> refreshListData() async {
    _uiState.loading = true;
    notifyListeners();
    _uiState.listArticle = await _repository.getListData();
    _uiState.loading = false;
    notifyListeners();
  }
}
