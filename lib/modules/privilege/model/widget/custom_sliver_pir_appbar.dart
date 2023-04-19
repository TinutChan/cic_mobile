import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:flutter/material.dart';

customPriSliverAppBar({
  VoidCallback? leadingOnTap,
  VoidCallback? favOnTap,
  VoidCallback? shareOnTap,
  final String? title,
  final bool? centerTitle,
  required BuildContext context,
}) {
  return SliverAppBar(
    centerTitle: centerTitle,
    title: Text('$title'),
    expandedHeight: 280.0,
    floating: true,
    leading: iconButtonAppBar(
      onTap: leadingOnTap,
      padding: const EdgeInsets.only(left: 8.0),
      icons: Icons.arrow_back_ios,
    ),
    actions: [
      iconButtonAppBar(onTap: favOnTap, icons: Icons.favorite_border),
      iconButtonAppBar(onTap: shareOnTap, icons: Icons.ios_share),
    ],
    pinned: true,
    // flexibleSpace: FlexibleSpaceBar(
    //   collapseMode: CollapseMode.parallax,
    //   centerTitle: true,
    // title: const Text(
    //   'name',
    //   style: TextStyle(
    //     color: Colors.white,
    //     fontSize: 16.0,
    //   ),
    // ),
    flexibleSpace: SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0,
        centerTitle: true,
        floating: true,
        pinned: true,
        leading: const SizedBox(),
        expandedHeight: 350.0,
        // forceElevated: innerBoxIsScrolled,
        actions: [
          IconButton(
              onPressed: () {
                // context.push('/profile/editprofileinfomation');
              },
              icon: const Icon(Icons.edit_square)),
          IconButton(
            onPressed: () {
              // context.push('/profile/setting');
            },
            icon: const Icon(Icons.settings),
          ),
        ],
        flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.none,
          centerTitle: true,
          background: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      width: double.infinity,
                      child: Image.network(
                        'https://cic.fra1.cdn.digitaloceanspaces.com/cicstaging/uploads/files/original/1829f0e993c738b116919199070be786.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 96,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.zero,
                width: double.infinity,
                height: 80,
                color: AppColor.whiteColor,
                child: const Text('lakflaskjdlajkdfl'),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget iconButtonAppBar({
  final EdgeInsetsGeometry? padding,
  final VoidCallback? onTap,
  final IconData? icons,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 34,
      width: 34,
      padding: padding,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.whiteColor.withOpacity(0.6),
      ),
      child: Center(
        child: Icon(
          icons,
          color: AppColor.blackColor,
          size: 20,
        ),
      ),
    ),
  );
}
