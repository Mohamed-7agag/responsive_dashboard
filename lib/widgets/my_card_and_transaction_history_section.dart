import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';

import 'transaction_history_section.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
