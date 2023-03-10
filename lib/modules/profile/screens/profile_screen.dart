import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../widgets/custom_slider.dart';
import '../../account/controller/technical_support_controller.dart';
import '../../home/controller/home_controller.dart';
import '../components/custom_profile_detail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen(
      {super.key,
      this.onCallTapped,
      this.onTelegramTapped,
      this.onEmailTapped,
      this.onWebsiteTapped});
  final VoidCallback? onCallTapped;
  final VoidCallback? onTelegramTapped;
  final VoidCallback? onEmailTapped;
  final VoidCallback? onWebsiteTapped;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  final homeController = Get.put(HomeController());
  final contactMoreController = Get.put(TechicalSupportController());
  final profileController = Get.put(ProfileController());

  late TabController _tabController;

  @override
  void initState() {
    profileController
        .profileController(homeController.userModel.value.customerId);
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['Personal Profile', 'Company Profile '];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverAppBar(
                  backgroundColor: AppColor.mainColor,
                  elevation: 0,
                  centerTitle: true,
                  floating: true,
                  pinned: true,
                  leading: const SizedBox(),
                  expandedHeight: 350.0,
                  forceElevated: innerBoxIsScrolled,
                  actions: [
                    IconButton(
                      onPressed: () {
                        profileController.profileController(
                            homeController.userModel.value.customerId);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                  flexibleSpace: const FlexibleSpaceBar(
                    collapseMode: CollapseMode.none,
                    centerTitle: true,
                    background: CustomProfileDetail(),
                  ),
                ),
              ),
            ];
          },
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 85),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: TabBar(
                    controller: _tabController,
                    padding: const EdgeInsets.all(2.0),
                    labelColor: Colors.black,
                    unselectedLabelColor: AppColor.darkGrey,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.whiteColor,
                    ),
                    tabs: tabs.map((String name) => Tab(text: name)).toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 10),
                          child: Text('About'),
                        ),
                        Obx(
                          () => profileController.isLoading.value
                              ? const Center(
                                  heightFactor: 8,
                                  child: CircularProgressIndicator(),
                                )
                              : Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    '${profileController.profileModel.value.data?.about}',
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(),
                                    const SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('Cambodia Investors Corporation'),
                                        Text('Beyond Investment Opportunity'),
                                      ],
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        debugPrint('= = = =Tapped====');
                                        context.pop(
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return const ListTile();
                                            },
                                          ),
                                        );
                                      },
                                      child: const Icon(Icons.more_horiz),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text('About'),
                                    Icon(Icons.edit)
                                  ],
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Gravida sit tortor nisl fringilla porttitor viverra scelerisque. Turpis nisl et facilisis aliquam ultricies interdum lectus eget facilisis aliquam.'),
                                const SizedBox(height: 20),
                                const CustomSlider(
                                  margin: EdgeInsets.only(right: 12.0),
                                  padEnds: false,
                                  viewportFraction: 0.9,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
