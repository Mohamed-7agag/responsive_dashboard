import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class MyCardAndTransactionHistoryAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionHistoryAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        MyCardAndTransactionHistorySection(),
        SizedBox(height: 16),
        IncomeSection(),
        SizedBox(height: 20),
      ],
    );
  }
}
