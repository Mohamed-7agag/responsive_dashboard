import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/widgets/income_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeItemModel> incomeItems = [
    IncomeItemModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      amount: '40%',
    ),
    IncomeItemModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      amount: '25%',
    ),
    IncomeItemModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      amount: '20%',
    ),
    IncomeItemModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      amount: '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: incomeItems.map((e) => IncomeItem(incomeItemModel: e)).toList(),
    );
  }
}
