import 'package:cic_mobile/routers/app_router.dart';

final List listImage = [
  {
    'imgaes': 'assets/icons/investment.png',
    'label': 'My Investment',
    'onTapped': () {
      approuter.push('/investment');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/bonus.png',
    'label': 'Bunos',
    'onTapped': () {
      approuter.push('/bunos');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/get_funding.png',
    'label': 'Get Funding',
    'onTapped': () {
      approuter.push('/get_funding');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/ut_trading.png',
    'label': 'UT Trading',
    'onTapped': () {
      approuter.push('/ut_trading');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/directory.png',
    'label': 'Directory',
    'onTapped': () {
      approuter.push('/directory');
    },
  },
  {
    'imgaes': 'assets/icons/home_category/report.png',
    'label': 'Report',
    'onTapped': () {
      approuter.push('/report');
    },
  }
];
