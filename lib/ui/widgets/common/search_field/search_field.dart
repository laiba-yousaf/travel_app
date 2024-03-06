import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travling_mobile_app/ui/common/app_colors.dart';

import 'search_field_model.dart';

// ignore: must_be_immutable
class SearchField extends StackedView<SearchFieldModel> {
  String title;
  SearchField({super.key, required this.title});

  @override
  Widget builder(
    BuildContext context,
    SearchFieldModel viewModel,
    Widget? child,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: kcVeryLightGrey,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: title,
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(Icons.search)
          ],
        ),
      ),
    );
  }

  @override
  SearchFieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchFieldModel();
}
