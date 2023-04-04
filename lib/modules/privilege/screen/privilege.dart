import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:cic_mobile/modules/privilege/model/widget/custom_privilage_shimmer.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:cic_mobile/widgets/custom_slider.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Privilege extends StatefulWidget {
  const Privilege({super.key});

  @override
  State<Privilege> createState() => _PrivilegeState();
}

class _PrivilegeState extends State<Privilege> {
  @override
  void initState() {
    _controller.getCategoryItem();
    _controller.getListAllStor();
    super.initState();
  }

  final _controller = Get.put(PrivilegeController());
  int? groupValue = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Privilege',
        centerTitle: false,
      ),
      body: Obx(
        () => _controller.isLoading.value == true
            ? const PrivilageShimmer()
            : RefreshIndicator(
                onRefresh: _controller.onRefresh,
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomSlider(
                          margin: EdgeInsets.only(
                              left: 3.0, right: 3.0, bottom: 10.0),
                          viewportFraction: 1,
                          padEnds: false,
                        ),
                        const SizedBox(height: 10.0),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text(
                                'Categories',
                                style: theme().textTheme.displayMedium,
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'See All',
                                  style:
                                      theme().textTheme.displaySmall!.copyWith(
                                            color: AppColor.mainColor,
                                          ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: _controller.listCategoryItem.map((e) {
                              return CustomCardCategories(
                                title: e.name,
                                netWorkImage: e.image,
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: double.infinity,
                          child: CupertinoSlidingSegmentedControl(
                            groupValue: groupValue,
                            children: {
                              0: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'All Stores',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              1: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Favorites',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            },
                            onValueChanged: (value) {
                              setState(() {
                                groupValue = value;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    debugPrint('----is click');
                                    _controller.getListAllStor();
                                  },
                                  child: const Text('24 Stores'),
                                ),
                              ),
                              Row(
                                children: const [
                                  Text('Filter'),
                                  Icon(Icons.search)
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Column(
                        //   children: _controller.listPrivilageShop.map((e) {
                        //     // return CustomCardItem(
                        //     //   image: e.shopLogo,
                        //     //   status: e.status,
                        //     //   title: e.shopNameInEnglish,
                        //     //   subtitle: e.slogan,
                        //     //   address: e.fullAddress,
                        //     //   offier: e.discountRate,
                        //     //   onTap: () {},
                        //     // );
                        //     return ListTile(
                        //       title: Text('$e'),
                        //     );
                        //   }).toList(),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
