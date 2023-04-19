import 'package:cic_mobile/modules/privilege/model/widget/custom_cupertinoslidersegment.dart';
import 'package:cic_mobile/modules/privilege/model/widget/custom_sliver_pir_appbar.dart';
import 'package:flutter/material.dart';

class PrivilageDetail extends StatefulWidget {
  const PrivilageDetail({
    super.key,
    this.id,
  });

  final String? id;

  @override
  State<PrivilageDetail> createState() => _PrivilageDetailState();
}

int? groupValue = 0;

class _PrivilageDetailState extends State<PrivilageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: customPriSliverAppBar(
                context: context,
                title: 'Pizza',
                centerTitle: true,
                favOnTap: () {},
                leadingOnTap: () {},
                shareOnTap: () {},
              ),
              //   SliverAppBar(
              //     backgroundColor: AppColor.mainColor,
              //     elevation: 0,
              //     centerTitle: true,
              //     floating: true,
              //     pinned: true,
              //     leading: const SizedBox(),
              //     expandedHeight: 350.0,
              //     forceElevated: innerBoxIsScrolled,
              //     actions: [
              //       IconButton(
              //           onPressed: () {}, icon: const Icon(Icons.edit_square)),
              //       IconButton(
              //         onPressed: () {},
              //         icon: const Icon(Icons.settings),
              //       ),
              //     ],
              //     flexibleSpace: const FlexibleSpaceBar(
              //       collapseMode: CollapseMode.none,
              //       centerTitle: true,
              //     ),
              //   ),
              // ),
            ),
          ];
        },
        body: Column(
          children: const [
            CustomCupertinoSlidingSegment(),
          ],
        ),
      ),
    );
  }
}
