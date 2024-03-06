import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_colors.dart';
import 'package:travling_mobile_app/ui/common/ui_helpers.dart';
import 'package:travling_mobile_app/ui/views/category/category_viewmodel.dart';

// ignore: must_be_immutable
class DestinationCard extends ViewModelWidget<CategoryViewModel> {
  String image;
  String title;

  DestinationCard({
    required this.image,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CategoryViewModel viewModel,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: kcLightGrey),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: kcLightGrey,
              child: Image(image: AssetImage(image)),
            ),
            horizontalSpaceSmall,
            Text(title),
          ],
        ),
      ),
    );
  }
}
