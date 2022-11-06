import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/widgets/order_page_widget/order_widget.dart';

class OrderFaturaWidget extends StatelessWidget {
  const OrderFaturaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      width: 368,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            OrderRowWidget(
              text1: 'Selected',
              text2: '01',
            ),
            Divider(),
            OrderRowWidget(
              text1: 'Sub Total',
              text2: '550.00',
            ),
            Divider(),
            OrderRowWidget(
              text1: 'Discount',
              text2: '90.00',
            ),
            Divider(),
            OrderRowWidget(
              text1: 'Delivery',
              text2: '50',
            ),
            Divider(),
            Expanded(
              child: OrderRowWidget(
                text1: 'Total',
                text2: '510.00',
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
