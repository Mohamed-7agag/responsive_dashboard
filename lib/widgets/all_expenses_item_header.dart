import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffFAFAFA)),
          child: Center(child: Image.asset(allExpensesItemModel.image)),
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Color(0xff064061),
        )
      ],
    );
  }
}
