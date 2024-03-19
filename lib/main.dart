import 'package:baap_market/util/routes/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appRoutes = Routes();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Legal Advice',
          routeInformationParser: appRoutes.router.routeInformationParser,
          routeInformationProvider: appRoutes.router.routeInformationProvider,
          routerDelegate: appRoutes.router.routerDelegate,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
        );
      },
    
    );
  }
}
