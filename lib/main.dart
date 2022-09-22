import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'UI/maincomponent_binding.dart';
import 'appRoute/appPages.dart';
import 'appRoute/appRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // SizeConfig().init(constraints, orientation);
            return ScreenUtilInit(
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Milestone',
                  theme: ThemeData(
                    // useMaterial3: true,
                    fontFamily: 'TypoRound',
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    cupertinoOverrideTheme: const CupertinoThemeData(
                      primaryColor: Colors.white,
                    ),
                    colorScheme: const ColorScheme.light().copyWith(
                      primary: Colors.white,
                    ),
                    appBarTheme: const AppBarTheme(
                      titleSpacing: 0.0,
                      backgroundColor: Colors.white,
                      elevation: 1,
                      centerTitle: false,
                      iconTheme: IconThemeData(
                        color: Colors.black,
                      ),
                    ),
                    scrollbarTheme: ScrollbarThemeData(
                      thumbColor:
                          MaterialStateProperty.resolveWith<Color?>((states) {
                        return Colors.grey;
                      }),
                      interactive: true,
                      radius: const Radius.circular(8.0),
                      thickness:
                          MaterialStateProperty.resolveWith<double?>((states) {
                        return 8.0;
                      }),
                    ),
                  ),
                  initialRoute: AppRoutes.maincomponent,
                  initialBinding: MainComponentBinding(),
                  getPages: AppPages.pages,
                  transitionDuration: const Duration(milliseconds: 500),
                  // getPages: AppPages.pages,
                );
              },
            );
          },
        );
      },
    );
  }
}
