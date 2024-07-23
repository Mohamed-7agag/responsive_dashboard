import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 20),
              ),
              SliverToBoxAdapter(
                child: AllExpenses(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(height: 16),
              ),
              SliverToBoxAdapter(
                child: QuickInvoice(),
              ),
            ],
          ),
        ),
        SizedBox(width: 24),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  MyCardAndTransactionHistorySection(),
                  SizedBox(height: 16),
                  IncomeSection(),
                ],
              ),
            )),
      ],
    );
  }
}
