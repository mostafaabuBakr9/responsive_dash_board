import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_Button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Customer name', hint: 'Type customer name here'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type customer email here'),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                  title: 'Item name', hint: 'Type customer name here'),
            ),
            SizedBox(width: 16),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD'))
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
                    backgroundColor: Colors.white,
                    text: Text(
                      'Add more details',
                      style: AppStyles.styleSemiBold18(context)
                          .copyWith(color: const Color(0xFF4DB7F2)),
                    ))),
            const SizedBox(
              width: 24,
            ),
             Expanded(
                child: CustomButton(
                    backgroundColor: Color(0xFF4DB7F2),
                    text: Text(
                      'Send Money',
                      style: AppStyles.styleSemiBold18(context),
                    ))),
          ],
        )
      ],
    );
  }
}
