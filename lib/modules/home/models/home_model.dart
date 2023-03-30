import 'package:cic_mobile/routers/app_router.dart';

final List listImage = [
  {
    'imgaes': 'assets/icons/investment.png',
    'label': 'My Investment',
    'onTapped': () {
      approuter.push('/home/investment');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/bonus.png',
    'label': 'Bunos',
    'onTapped': () {
      approuter.push('/home/bunos');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/get_funding.png',
    'label': 'Get Funding',
    'onTapped': () {
      approuter.push('/home/get_funding');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/ut_trading.png',
    'label': 'UT Trading',
    'onTapped': () {
      approuter.push('/home/ut_trading');
    },
  },
  {
    'imgaes': 'assets/icons/privilege.svg',
    'label': 'privilege',
    'onTapped': () {
      approuter.push('/home/privilege');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/directory.png',
    'label': 'Directory',
    'onTapped': () {
      approuter.push('/home/directory');
    },
  },
];
