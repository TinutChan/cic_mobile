import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon {
  static Image phoneicons = Image.asset('assets/icons/phone.png');
  static Image phoneiconsBold = Image.asset('assets/icons/phone_bold.png');
  static SvgPicture notification = SvgPicture.asset(
    'assets/icons/account_icons/notification.svg',
  );
  static SvgPicture changePassword =
      SvgPicture.asset('assets/icons/account_icons/change_pass.svg');
  static SvgPicture faceId =
      SvgPicture.asset('assets/icons/account_icons/face_id.svg');
  static SvgPicture fingerPrint =
      SvgPicture.asset('assets/icons/account_icons/finger_print.svg');
  static SvgPicture changePin =
      SvgPicture.asset('assets/icons/account_icons/change_pin.svg');

  static SvgPicture privacy =
      SvgPicture.asset('assets/icons/account_icons/privacy.svg');
  static SvgPicture termCondition =
      SvgPicture.asset('assets/icons/account_icons/term_condition.svg');
  static SvgPicture aboutCic =
      SvgPicture.asset('assets/icons/account_icons/info.svg');
  static SvgPicture cicManual =
      SvgPicture.asset('assets/icons/account_icons/setting_screen.svg');
  static SvgPicture support =
      SvgPicture.asset('assets/icons/account_icons/agency.svg');
  static SvgPicture logout =
      SvgPicture.asset('assets/icons/account_icons/logout.svg');
}
