import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryItemModel});
  final TransactionHistoryItemModel transactionHistoryItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0x00FAFAFA),
      child: ListTile(
        title: Text(
          transactionHistoryItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryItemModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionHistoryItemModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionHistoryItemModel.isIncome
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
