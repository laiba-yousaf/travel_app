import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_strings.dart';

class CategoryViewModel extends BaseViewModel {
 

  List title = [
    "Kuta Beach",
    "Kuta Resort",
    "Mandalika Resort",
    "Jimbaran Beach"
  ];

  List destinationtitle = ["Beach", "Beach", "Beach", "Beach"];

  List images = [kuta, resort, manadalika, beach];

  List destinationimages = [tree, tree, tree, tree];

  // updatestate(like, index) {
  //   likes[index] = !like;
  //   notifyListeners();
  // }

  List likes = [true, false, false, false];
}
