import 'package:baap_market/constant/app_string.dart';

import 'package:baap_market/widget/text_widget.dart';
import 'package:lottie/lottie.dart';
import 'package:baap_market/constant/app_image.dart';
import 'package:baap_market/util/routes/routing.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.push(Routes.login_screen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            44.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  // context.read<ThemeCubit>().toggleTheme();
                },
                icon: Icon(
                  Icons.mode_night_rounded,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30.h,
            horizontal: 35.w,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Image.asset(
                    AppImages.baap_market,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextWidget(
                    data: AppString.lawyertext,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: const Color.fromARGB(255, 188, 183, 183),
                  ),
                  Lottie.asset(
                    'asset/images/lawyer.json',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
