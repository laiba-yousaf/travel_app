import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_strings.dart';
import 'package:travling_mobile_app/ui/common/ui_helpers.dart';
import 'package:travling_mobile_app/ui/widgets/common/category_card/category_card.dart';
import 'package:travling_mobile_app/ui/widgets/common/search_field/search_field.dart';

import 'search_screen_viewmodel.dart';

class SearchScreenView extends StackedView<SearchScreenViewModel> {
  const SearchScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back),
              const Text(
                "Search",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  viewModel.navigationCategory();
                },
                child: Image(
                  image: AssetImage(
                    search,
                  ),
                  width: 20,
                  height: 20,
                ),
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
                SearchField(title: "Bali"),
                verticalSpaceMedium,
                const Text(
                  "We found 4 trips in \"Bali\"",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(
                  height: 500,
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
  SearchScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchScreenViewModel();
}
