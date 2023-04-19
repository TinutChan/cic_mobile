import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:cic_mobile/widgets/custom_textfield.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SeeAllCategoriesPrivilage extends StatefulWidget {
  const SeeAllCategoriesPrivilage({super.key});

  @override
  State<SeeAllCategoriesPrivilage> createState() =>
      _SeeAllCategoriesPrivilageState();
}

class _SeeAllCategoriesPrivilageState extends State<SeeAllCategoriesPrivilage> {
  @override
  void initState() {
    // _privilageController.getCategoryItem();
    // _privilageController.onInit();

    super.initState();
  }

  final _privilageController = Get.put(PrivilegeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        isLogo: false,
        context: context,
        title: 'Categories',
      ),
      body: RefreshIndicator(
        onRefresh: () async => _privilageController.refreshNewCategoryPriItem(),
        child: Obx(
          () => _privilageController.isLoadingAllCategory.value == true
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.zero,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: CustomTextField(
                              obscureText: false,
                              onChanged: (value) {
                                debugPrint('-----search -- $value');
                                // _privilageController.filterSearchResults(value);
                              }),
                        ),
                        Column(
                          children:
                              _privilageController.listCategoryItem.map((e) {
                            return CustomCardCategories(
                              height: 96.0,
                              width: double.infinity,
                              isWidth: true,
                              title: e.name,
                              countShop: e.countShop,
                              netWorkImage: e.image,
                              onTap: () {
                                context.go(
                                    '/home/privilege/see-all-categories/all-shop/${e.id}');
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
