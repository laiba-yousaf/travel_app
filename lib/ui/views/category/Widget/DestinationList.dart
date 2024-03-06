import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/views/category/Widget/destinationWidget.dart';
import 'package:travling_mobile_app/ui/views/category/category_viewmodel.dart';

// ignore: must_be_immutable
class DestinationList extends ViewModelWidget<CategoryViewModel> {
  DestinationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CategoryViewModel viewModel,
  ) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: viewModel.destinationimages.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: DestinationCard(
              image: viewModel.destinationimages[index],
              title: viewModel.destinationtitle[index],
            ),
          );
        },
      ),
    );
  }
}
