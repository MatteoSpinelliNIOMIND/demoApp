import 'package:app/src/ui/home/repository.dart';

class HomeViewModelServiceLocator {
  const HomeViewModelServiceLocator();

  HomeRepository getHomeRepository() {
    return HomeRepository();
  }
}
