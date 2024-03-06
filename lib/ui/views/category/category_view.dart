import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_strings.dart';
import 'package:travling_mobile_app/ui/common/ui_helpers.dart';
import 'package:travling_mobile_app/ui/views/category/Widget/DestinationList.dart';
import 'package:travling_mobile_app/ui/views/category/Widget/categoryCard.dart';
import 'package:travling_mobile_app/ui/widgets/common/search_field/search_field.dart';

import 'category_viewmodel.dart';

class CategoryView extends StackedView<CategoryViewModel> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back),
              const Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image(
                image: AssetImage(
                  search,
                ),
                width: 20,
                height: 20,
              ),
            ],
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceLarge,
                SearchField(title: "Search Destination"),
                verticalSpaceMedium,
              DestinationList(),
                verticalSpaceMedium,
                SizedBox(
                  height: 450,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: viewModel.title.length,
                      itemBuilder: (BuildContext context, index) {
                        return CategoryCard(
                          image: viewModel.images[index],
                          title: viewModel.title[index],
                          like: viewModel.likes[index],
                          index: index,
                          descrption:
                              "Bali is an island in indonasia\nknown for its verdant volcano",
                        );
                      }),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  CategoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoryViewModel();
}
