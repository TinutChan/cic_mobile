import 'package:cic_mobile/modules/profile/components/custom_popup_menu_button.dart';
import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/color_app/color_app.dart';
import '../../account/controller/technical_support_controller.dart';
import '../../home/controller/home_controller.dart';
import '../components/custom_profile_detail.dart';
import '../controller/company_controller.dart';
import '../components/custom_company_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  final contactMoreController = Get.put(TechicalSupportController());
  final profileController = Get.put(ProfileController());
  final homeController = Get.put(HomeController());
  final companyProfileController = Get.put(CompanyProfileController());
  late TabController _tabController;

  @override
  void initState() {
    profileController.profileDetail(
        id: homeController.userModel.value.customerId);
    companyProfileController.companyProfileDetail(
        id: homeController.userModel.value.customerId);
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());
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
                          context.push('/account/editprofileinfomation');
                        },
                        icon: const Icon(Icons.edit_square)),
                    IconButton(
                      onPressed: () {
                        context.push('/account/setting');
                      },
                      icon: const Icon(Icons.settings),
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.13),
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
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
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
                                    child: profileController.profileDetailModel
                                                .value.about !=
                                            null
                                        ? Text(
                                            '${profileController.profileDetailModel.value.about}')
                                        : Center(
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 20, right: 20),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                      'assets/icons/profile_icons/empty_state.svg'),
                                                  const Text('No Report Yet'),
                                                  const Text(
                                                    'Here’s where you’ll find the newest',
                                                  ),
                                                  const Text(
                                                      'report from our App.'),
                                                ],
                                              ),
                                            ),
                                          ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Obx(
                            () => companyProfileController.isLoading.value
                                ? const Center(
                                    child: CircularProgressIndicator(),
                                  )
                                : companyProfileController
                                        .listCompanyProfile.isNotEmpty
                                    ? ListView.builder(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        itemCount: companyProfileController
                                            .listCompanyProfile.length,
                                        itemBuilder: (context, index) {
                                          return CompanyProfileScreen(
                                            image: companyProfileController
                                                .companyProfileModel
                                                .value
                                                .companyLogo,
                                            title: companyProfileController
                                                .companyProfileModel
                                                .value
                                                .companyName,
                                            subtitle: companyProfileController
                                                .companyProfileModel
                                                .value
                                                .companySlogan,
                                            onTapped: () {
                                              const CustomPopUpmenuBotton();
                                            },
                                            desc: companyProfileController
                                                .companyProfileModel
                                                .value
                                                .personalInterest,
                                            productService:
                                                companyProfileController
                                                    .companyProfileModel
                                                    .value
                                                    .companyProductAndService,
                                            sildeImage: companyProfileController
                                                .companyProfileModel
                                                .value
                                                .ownerName,
                                            addCompany: () {
                                              context.push(
                                                  '/account/create/company');
                                            },
                                          );
                                        },
                                      )
                                    : SvgPicture.asset(
                                        'assets/icons/profile_icons/empty_state.svg'),
                          ),
                        ),
                      ],
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
