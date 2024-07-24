import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_and_income_section.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: AllExpensenAndQuickInvoiceSection(),
          ),
          SliverToBoxAdapter(
            child: MyCardAndTransactionHistoryAndIncomeSection(),
          ),
        ],
      ),
    );
  }
}
