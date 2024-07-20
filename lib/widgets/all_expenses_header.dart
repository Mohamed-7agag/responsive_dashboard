import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'all_expenses_header_duration.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const AllExpensesHeaderDuration()
      ],
    );
  }
}
