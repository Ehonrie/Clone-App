import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/components/dissmiss_keyboard.dart';
import 'core/routes/generate.dart';
import 'core/routes/manager.dart';
import 'core/theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        builder: (context, build) {
          return DismissKeyboardBehavior(
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Clone App',
              onGenerateRoute: RouteGenerator.getRoute,
              initialRoute: RoutesManager.splashRoute,
              theme: getApplicationTheme(),
           
            ),
          );
        });
  }
}