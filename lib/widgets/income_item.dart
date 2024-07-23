import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeItemModel});
  final IncomeItemModel incomeItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: incomeItemModel.color,
        ),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.amount,
        style: AppStyles.styleMedium16(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
