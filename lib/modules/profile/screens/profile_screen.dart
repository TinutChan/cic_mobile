import 'package:cic_mobile/modules/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../utils/show_dialog/show_phone_call_dialog.dart';
import '../../account/controller/technical_support_controller.dart';
import '../components/custom_profile_detail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final contactMoreController = Get.put(TechicalSupportController());
final profileController = Get.put(ProfileController());

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> tabs = <String>['Personal Profile', 'Company Profile '];
    // final height = MediaQuery.of(context).size.width;
    // final width = MediaQuery.of(context).size.width;
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
                  pinned: true,
                  leading: const SizedBox(),
                  expandedHeight: 350.0,
                  stretch: true,
                  forceElevated: innerBoxIsScrolled,
                  actions: [
                    IconButton(
                        onPressed: () {
                          profileController.profileController();
                        },
                        icon: const Icon(Icons.add))
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: const [],
                    collapseMode: CollapseMode.none,
                    centerTitle: true,
                    background: CustomProfileDetail(
                      onCallTapped: () {
                        showPhoneCallDialogBottom(context);
                      },
                      onEmailTapped: () {
                        contactMoreController.launchEmail(
                          Uri.parse('tinutchan@gmail.com'),
                        );
                      },
                      onTelegramTapped: () {
                        contactMoreController.launchInBrowser(
                          Uri.parse('https://t.me/NutxT'),
                        );
                      },
                      onWebsiteTapped: () {},
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Column(children: [
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
                children: tabs.map((String name) {
                  return Builder(
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        key: PageStorageKey<String>(name),
                        slivers: const [],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
