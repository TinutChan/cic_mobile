import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EquityFund extends StatelessWidget {
  const EquityFund({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/ut_trading/getin.svg'),
          const SizedBox(width: 15.0),
          Column(
            children: const [
              Text('Total UT'),
              Text('997,000'),
            ],
          ),
        ],
      ),
    );
  }
}
