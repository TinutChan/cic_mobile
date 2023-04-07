import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:cic_mobile/modules/privilege/model/widget/custom_privilage_shimmer.dart';
import 'package:cic_mobile/modules/privilege/model/widget/loading_more_privilage_shop.dart';
import 'package:cic_mobile/modules/privilege/model/widget/privilage_filter_search.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:cic_mobile/widgets/custom_slider.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_categories.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class Privilege extends StatefulWidget {
  const Privilege({super.key});

  @override
  State<Privilege> createState() => _PrivilegeState();
}

class _PrivilegeState extends State<Privilege> {
  @override
  void initState() {
    _controller.initialScreen();
    _controller.getCategoryItem();
    _controller.getListAllStore(page: 1);

    super.initState();
  }

  final PageController _pageController = PageController();
  final _controller = Get.put(PrivilegeController());
  int groupValue = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Privilege Program',
        centerTitle: false,
      ),
      body: Obx(
        () => _controller.isLoading.value == true &&
                _controller.isLoadinggetListAll.value == true &&
                _controller.currentPage.value == 1
            ? const PrivilageShimmer()
            : NotificationListener<ScrollUpdateNotification>(
                onNotification: (notification) {
                  if (notification.metrics.pixels ==
                      notification.metrics.maxScrollExtent) {
                    _controller.fetchAllStorePagination();
                  }
                  return false;
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    RefreshIndicator(
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
                                      onTap: () {
                                        context.push(
                                            '/home/privilege/see-all-categories');
                                      },
                                      child: Text(
                                        'See All',
                                        style: theme()
                                            .textTheme
                                            .displaySmall!
                                            .copyWith(
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
                                  children:
                                      _controller.listCategoryItem.map((e) {
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
                                  children: <int, Widget>{
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
                                  onValueChanged: (int? value) async {
                                    groupValue = value!;

                                    // _pageController.animateToPage(
                                    //   groupValue,
                                    //   duration:
                                    //       const Duration(milliseconds: 200),
                                    //   curve: Curves.fastOutSlowIn,
                                    // );

                                    if (value == 1) {
                                      _controller.fetchIsFavouriteStore(
                                          isFav: true);
                                    } else {
                                      _controller.privilageList.clear();
                                      _controller.getListAllStore(page: 1);
                                    }

                                    setState(() {});
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
                                        },
                                        child: Text(
                                            '${_controller.allStoreLength.value} Stores'),
                                      ),
                                    ),
                                    const FilterSearchPrivilage(),
                                  ],
                                ),
                              ),
                              Obx(
                                () => _controller.isLoadinggetListAll.value ==
                                            true ||
                                        _controller.isLoadingAllFavList.value ==
                                            true
                                    ? const Center(
                                        child: CircularProgressIndicator())
                                    : Column(
                                        children:
                                            _controller.privilageList.map((e) {
                                          return CustomCardItem(
                                            title: e.shopNameInEnglish,
                                            subtitle: e.slogan,
                                            address: e.fullAddress,
                                            image: e.shopLogo,
                                            status: e.status,
                                            offier: e.discountRate,
                                            onTap: () {},
                                            isFavorite: e.isFavorite,
                                            colorEnd: e.discountBgColor,
                                            colorStart: e.discountBgColorEnd,
                                          );
                                        }).toList(),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (_controller.isLoadinggetListAll.value == true &&
                        _controller.isLoadingAllFavList.value == true &&
                        _controller.currentPage.value > 1 == true)
                      Obx(
                        () => _controller.isLoadinggetListAll.value == true &&
                                _controller.isLoadingAllFavList.value == true
                            ? const LoadingMorePrivilageShop()
                            : const SizedBox(),
                      ),
                  ],
                ),
              ),
      ),
    );
  }
}
