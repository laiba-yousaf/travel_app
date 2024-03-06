import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_colors.dart';
import 'package:travling_mobile_app/ui/common/ui_helpers.dart';

import 'category_card_model.dart';

// ignore: must_be_immutable
class CategoryCard extends StackedView<CategoryCardModel> {
  String image;
  String title;
  String descrption;
  bool like;
  int index;
  CategoryCard({super.key, required this.image,
    required this.title,
    required this.descrption,
    required this.index,
    required this.like,});

  @override
  Widget builder(
    BuildContext context,
    CategoryCardModel viewModel,
    Widget? child,
  ) {
    return  Card(
      child: Container(
        height: 200,
        width: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: kcRedColor,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                  )),
              horizontalSpaceSmall,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            viewModel.updatestate(like, index);
                          },
                          child: Icon(
                            Icons.favorite,
                            color: like ? kcRedColor : kcLightGrey,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceSmall,
                    const Text(
                      "\$245.00",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: kcRedColor),
                    ),
                    verticalSpaceTiny,
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: kcYellowColor,
                          size: 15,
                        ),
                        Icon(Icons.star, color: kcYellowColor, size: 15),
                        Icon(Icons.star, color: kcYellowColor, size: 15),
                        Icon(Icons.star, color: kcYellowColor, size: 15),
                        Icon(Icons.star, color: kcLightGrey, size: 15),
                        horizontalSpaceSmall,
                        Text(
                          "4.8",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    verticalSpaceTiny,
                    Text(
                      descrption,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kcMediumGrey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CategoryCardModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoryCardModel();
}
