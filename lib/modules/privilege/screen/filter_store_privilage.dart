import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:cic_mobile/modules/privilege/model/widget/custom_checked_box_filter_location.dart';
import 'package:cic_mobile/widgets/custom_appbar.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterStorePrivilage extends StatefulWidget {
  const FilterStorePrivilage({super.key});

  @override
  State<FilterStorePrivilage> createState() => _FilterStorePrivilageState();
}

class _FilterStorePrivilageState extends State<FilterStorePrivilage> {
  final _privilageController = Get.put(PrivilegeController());

  @override
  void initState() {
    _privilageController.filterLocationPrivilage(id: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWhiteBgColor(
        context: context,
        title: 'Filter',
        elevetion: 0.7,
        centerTitle: true,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 19.0, bottom: 19.0),
                child: Text(
                  'Categories',
                  style: theme().textTheme.displayMedium,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _privilageController.listCategoryItem.map((e) {
                    return CustomCardCategories(
                      netWorkImage: e.image,
                      title: e.name,
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 19.0, bottom: 19.0),
                child: Text(
                  'Location',
                  style: theme().textTheme.displayMedium,
                ),
              ),
              Column(
                children: _privilageController.listLocationAddress.map((e) {
                  return CheckedBoxFilterLocation(
                    // value: ,
                    // onSelected: e.code,
                    locationLabel: e.nameEn,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
