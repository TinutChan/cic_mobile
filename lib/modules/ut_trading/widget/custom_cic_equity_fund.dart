import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/modules/ut_trading/widget/Icon_and_text.dart';
import 'package:cic_mobile/modules/ut_trading/widget/custom_transfer_button.dart';
import 'package:flutter/material.dart';

class CustomCicEquityFundCard extends StatelessWidget {
  const CustomCicEquityFundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),

      width: double.infinity,
      // alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: AppColor.grey4Color,
            spreadRadius: 0.3,
            blurRadius: 0.5,
            offset: const Offset(0.3, 0.4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('CiC Equity Fund'),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const EquityFund(),
              Container(
                width: 2.0,
                height: 40.0,
                color: AppColor.greyColor1.withOpacity(0.25),
              ),
              const EquityFund()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomRecieveTranserButton(),
              CustomRecieveTranserButton()
            ],
          )
        ],
      ),
    );
  }
}
