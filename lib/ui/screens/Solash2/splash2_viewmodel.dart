import 'package:carify/app/app.router.dart';
import 'package:carify/app/utils.dart';
import 'package:stacked/stacked.dart';

class Splash2ViewModel extends BaseViewModel {
  void init(){
    print("init");
  }
  goto(){
    navigationService.navigateTo(Routes.homeView);
  }
}
