import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_strings.dart';

class CategoryCardModel extends BaseViewModel {
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

}
