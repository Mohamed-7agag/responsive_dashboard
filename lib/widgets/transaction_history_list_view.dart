import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_item_model.dart';
import 'package:responsive_dashboard/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionHistoryItemModel> items = [
    TransactionHistoryItemModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isIncome: false,
    ),
    TransactionHistoryItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isIncome: true,
    ),
    TransactionHistoryItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isIncome: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return TransactionHistoryItem(
          transactionHistoryItemModel: items[index],
        );
      },
    );
  }
}
