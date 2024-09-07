import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/features/home/home.dart';
import 'package:kasirsuper/features/settings/pages/pages.dart';
import 'package:kasirsuper/features/settings/pages/struck/page.dart';

import '../features/home/pages/main/main.dart';
import '../features/settings/pages/profile/page.dart';

Route<dynamic> routes(settings) {
  switch (settings.name) {
    case MainPage.routeName:
      return MaterialPageRoute(builder: (context) {
        return const MainPage();
      });
    case ProfilePage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const ProfilePage();
      });
    case XenditPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const XenditPage();
      });
    case StruckPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const StruckPage();
      });
    case ShowStruckPage.routeName:
      return CupertinoPageRoute(builder: (_) {
        return const ShowStruckPage();
      });
    default:
      return MaterialPageRoute(builder: (builder) {
        return const Scaffold(
          body: RegularText(
            'Not Found',
            textAlign: TextAlign.center,
          ),
        );
      });
  }
}
