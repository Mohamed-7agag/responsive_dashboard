import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';

import 'titled_text_field_section.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitledTextFieldSection(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: TitledTextFieldSection(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitledTextFieldSection(
                title: 'Item name',
                hint: 'Type Item name',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: TitledTextFieldSection(
                title: 'Item mount',
                hint: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              backgroundColor: Colors.transparent,
              textColor: Color(0xff4EB7F2),
            )),
            SizedBox(width: 24),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            )),
          ],
        )
      ],
    );
  }
}
