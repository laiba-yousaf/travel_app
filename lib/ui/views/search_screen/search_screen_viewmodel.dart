import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:travling_mobile_app/app/app.locator.dart';
import 'package:travling_mobile_app/app/app.router.dart';
import 'package:travling_mobile_app/ui/common/app_strings.dart';

class SearchScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
 
  List likes = [true, false, false, false];

  List title = [
    "Kuta Beach",
    "Kuta Resort",
    "Mandalika Resort",
    "Jimbaran Beach"
  ];

  List images = [kuta, resort, manadalika, beach];

  updatestate(like, index) {
    likes[index] = !like;
    notifyListeners();
  }

  navigationCategory() {
    _navigationService.navigateToCategoryView();
  }
}
