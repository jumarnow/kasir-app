import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

import '../features/home/pages/main/main.dart';

Route<dynamic> routes(settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context){
              return const HomePage();
            });
          default:
            return MaterialPageRoute(builder: (builder){
              return const Scaffold(
                body: RegularText(
                  'Not Found', 
                  textAlign: TextAlign.center,
                  ),
              );
            });
        }
      }