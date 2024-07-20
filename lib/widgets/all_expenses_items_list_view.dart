import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> itemList = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: itemList.asMap().entries.map(
        (e) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: e.key == 1 ? 12 : 0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = e.key;
                  });
                },
                child: AllExpensesItem(
                  allExpensesItemModel: e.value,
                  isSelected: selectedIndex == e.key,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
