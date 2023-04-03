import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/constants/font_app/theme_data.dart';
import 'package:cic_mobile/modules/privilege/controller/privilege_controller.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:cic_mobile/widgets/custom_slider.dart';
import 'package:cic_mobile/widgets/privilege/custom_card_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Privilege extends StatefulWidget {
  const Privilege({super.key});

  @override
  State<Privilege> createState() => _PrivilegeState();
}

class _PrivilegeState extends State<Privilege> {
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
      body: RefreshIndicator(
        onRefresh: _controller.onRefresh,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSlider(
                  margin: EdgeInsets.only(left: 3.0, right: 3.0, bottom: 10.0),
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
                          style: theme().textTheme.displaySmall!.copyWith(
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
                        _controller.listCategoryItem.asMap().entries.map((e) {
                      return CustomCardCategories(
                        title: _controller.listCategoryItem[index].name,
                        netWorkImage: _controller.listCategoryItem[index].image,
                      );
                    }).toList(),
                  ),
                )
                // const CustomCardCategories(
                //   title: 'Education Training',
                //   netWorkImage:
                //       'https://cic.fra1.cdn.digitaloceanspaces.com/cicstaging/uploads/files/original/c8e31d1ef5c2bd53de5339c6c43b0f84.png',
                // ),
                // Container(
                //   margin: const EdgeInsets.all(10.0),
                //   width: double.infinity,
                //   child: CupertinoSlidingSegmentedControl(
                //     groupValue: groupValue,
                //     children: {
                //       0: Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Text(
                //           'All Stores',
                //           style:
                //               Theme.of(context).textTheme.bodyLarge!.copyWith(
                //                     fontWeight: FontWeight.w500,
                //                   ),
                //         ),
                //       ),
                //       1: Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Text(
                //           'Favorites',
                //           style:
                //               Theme.of(context).textTheme.bodyLarge!.copyWith(
                //                     fontWeight: FontWeight.w500,
                //                   ),
                //         ),
                //       ),
                //     },
                //     onValueChanged: (value) {
                //       setState(() {
                //         groupValue = value;
                //       });
                //     },
                //   ),
                // ),
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 10,
                //     itemBuilder: (context, index) {
                //       return CustomCardItem(
                //         image:
                //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEVNGgb4LNv0L_jg7gUJUqWG2gVB8i0ir4ezCaYdzUEVgnPFSVBFgXOYj1GKWLIRsM59s&usqp=CAU',
                //         status: 'OPEN NOW',
                //         title:
                //             'Champei Spaskdfa;lskdfa;kjfsldkf;slkdfja;lsdjfl;skjdf;laskdjf',
                //         subtitle: 'Lorem ipsumdolorlsjflkdjf;alksdfjs;l ',
                //         address: 'Toul Kork',
                //         offier: '40%',
                //         onTap: () {},
                //       );
                //     },
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _controller.getCategoryItem();
      }),
    );
  }
}
