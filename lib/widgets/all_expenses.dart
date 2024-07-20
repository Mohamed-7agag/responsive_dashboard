import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

import 'all_expenses_header.dart';
import 'all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: Column(
      children: [
        const AllExpensesHeader(),
        const SizedBox(height: 16),
        AllExpensesItem(
          allExpensesItemModel: AllExpensesItemModel(
              image: Assets.imagesBalance,
              title: 'Balance',
              date: 'April 2022',
              price: r'$20,129'),
        )
      ],
    ));
  }
}
