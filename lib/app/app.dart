import 'package:flutter/material.dart';
import 'package:kasirsuper/app/routes.dart';
import 'package:kasirsuper/core/core.dart';
import 'package:kasirsuper/core/preferences/theme/light_theme.dart';
import 'package:kasirsuper/features/settings/settings.dart';

import '../features/home/pages/main/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir SUPER',
      theme: LightTime(AppColors.green).theme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      onGenerateRoute: routes,
      routes: {
        '/home': (context) {
          return const MainPage();
        },
      },
    );
  }
}
