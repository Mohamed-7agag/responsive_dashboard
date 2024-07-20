import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
    this.imageColor,
    this.color,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final Color? imageColor, color;

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
              color: color ?? const Color(0xffFAFAFA)),
          child: Center(
              child: SvgPicture.asset(
            allExpensesItemModel.image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: imageColor != null ? Colors.white : const Color(0xff064061),
        )
      ],
    );
  }
}
