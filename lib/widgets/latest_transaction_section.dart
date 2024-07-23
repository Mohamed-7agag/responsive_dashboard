import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 16),
        const LatestTransactionListView(),
        const Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        const QuickInvoiceForm()
      ],
    );
  }
}
