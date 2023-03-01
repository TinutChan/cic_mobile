import 'package:cic_mobile/constants/app_icon/app_icon.dart';
import 'package:cic_mobile/routers/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../constants/color_app/color_app.dart';
import '../../../constants/font_app/app_font.dart';
import '../../../utils/helper/local_storage.dart';
import '../../../utils/show_dialog/show_dialog_bottomsheet.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.mainColor,
        titleSpacing: 0,
        title: Text('Settings', style: AppFont.text20white),
        leadingWidth: 110,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                context.go('/');
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            SvgPicture.asset('assets/images/cicz-logo.svg')
          ],
        ),
      ),
      body: SettingsList(
        physics: const BouncingScrollPhysics(),
        brightness: Brightness.light,
        applicationType: ApplicationType.material,
        sections: [ 
          SettingsSection(
            title: const Text('App System'),
            tiles: [
              SettingsTile.navigation(
                leading: AppIcon.notification,
                title: Text('Notification', style: AppFont.text16blackColor),
                trailing: CupertinoSwitch(
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    }),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Sign in & Security'),
            tiles: [
              SettingsTile.navigation(
                leading: AppIcon.changePassword,
                title: Text('Change Password', style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.faceId,
                title: Text('Use Face ID to Sign in',
                    style: AppFont.text16blackColor),
                trailing: CupertinoSwitch(
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    }),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.fingerPrint,
                title: Text('Fingerprint', style: AppFont.text16blackColor),
                trailing: CupertinoSwitch(
                    value: isChecked, onChanged: (bool value) {}),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.changePin,
                title: Text('Change PIN', style: AppFont.text16blackColor),
                trailing: CupertinoSwitch(
                    value: isChecked, onChanged: (bool? value) {}),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Support'),
            tiles: [
              SettingsTile.navigation(
                leading: AppIcon.changePassword,
                title: Text('Privacy Policy', style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.termCondition,
                title:
                    Text('Term and Condition', style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.aboutCic,
                title: Text('About CiC Mobile App',
                    style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.cicManual,
                title: Text('CiC App Manual', style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) {},
              ),
              SettingsTile.navigation(
                leading: AppIcon.support,
                title:
                    Text('Technical Support', style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) {
                  showDialogBottom(context);
                },
              ),
            ],
          ),
          SettingsSection(
            title: Container(height: 2),
            tiles: [
              SettingsTile.navigation(
                leading: AppIcon.logout,
                title: Text('Logout', style: AppFont.text16blackColor),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: AppColor.darkGrey,
                ),
                onPressed: (context) async {
                  await LocalDataStorage.removeCurrentUser();
                  approuter.go('/splash_screen');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
