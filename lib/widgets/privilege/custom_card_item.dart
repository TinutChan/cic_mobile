import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10.0),
          width: double.infinity,
          height: 104,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0.3, 0.5),
                  blurStyle: BlurStyle.solid,
                  // spreadRadius: 5,
                  blurRadius: 5)
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('OPEN NOW',
                            style: theme()
                                .textTheme
                                .labelSmall!
                                .copyWith(color: Colors.green)),
                        Text('Champei Spa',
                            style: theme().textTheme.displayMedium),
                        const Text('Lorem ipsum'),
                        const Spacer(),
                        Row(
                          children: const [
                            Icon(Icons.location_on),
                            Text('Toul Kork'),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: 20,
                      color: const Color(0xffE28112),
                      child: const Text(
                        '40%',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 20.0,
          left: 20,
          child: GestureDetector(
            onTap: () {},
            child: const SizedBox(
              width: 20,
              height: 20,
              child: Icon(Icons.favorite_outline),
            ),
          ),
        ),
      ],
    );
  }
}
