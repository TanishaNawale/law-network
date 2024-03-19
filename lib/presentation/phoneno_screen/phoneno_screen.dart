import 'package:baap_market/constant/app_color.dart';
import 'package:baap_market/constant/app_image.dart';
import 'package:baap_market/constant/app_string.dart';
import 'package:baap_market/presentation/phoneno_screen/remanderbutton.dart';
import 'package:baap_market/widget/app_size.dart';
import 'package:baap_market/widget/button_widget.dart';
import 'package:baap_market/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBar_screen extends StatefulWidget {
  const AppBar_screen({super.key});

  @override
  State<AppBar_screen> createState() => _AppBar_screenState();
}

class _AppBar_screenState extends State<AppBar_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.keyboard_arrow_left,
              color: AppColors.whiteColor,
            ),
            TextWidget(
              data: AppString.signin,
              color: AppColors.whiteColor,
            ),
            Image.asset(
              AppImages.hamerlogo,
              height: 30,
              width: 30,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: Column(children: [
          Container(
            child: Image.asset(
              AppImages.logo,
              height: 180,
              width: 300,
              fit:BoxFit.cover,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.google,
                    height: 20,
                    width: 20,
                  ), // Prefix Icon
                  SizedBox(width: 8), // Adjust spacing between icon and text
                  TextWidget(
                    data: AppString.google,
                    color: AppColors.black,
                  ),
                ],
              ),
            ),
          ),
          SizedBoxWidget(
            height: 30,
          ),
          Row(children: <Widget>[
            Expanded(
                child: Divider(
              thickness: 2,
              endIndent: 2,
              color: AppColors.black,
            )),
            TextWidget(
              data: AppString.or,
              fontSize: 20,
            ),
            Expanded(
                child: Divider(
              thickness: 2,
              indent: 2,
              color: AppColors.black,
            )),
          ]),
          SizedBoxWidget(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                data: AppString.userid,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: AppColors.black,
                                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.black,width: 2)),


                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.black,width: 2))
                  ),
                  
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextWidget(
                data: AppString.remeber,
                color: const Color.fromARGB(255, 146, 141, 141),
              ),
              SwitchExample()
            ],
          ),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Row(
          //       children: [
          //         TextWidget(
          //           data: AppString.phoneno,
          //         ),
          //       ],
          //     ),
          //     Padding(
          //       padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          //       child: TextField(
          //         decoration: InputDecoration(
          //           focusColor: AppColors.black,
          //          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.black,width: 2)),
          //          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColors.black,width: 2)) ,
          //         ),
          //       )
          //     )
          //   ],
          // ),
          SizedBoxWidget(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: TextButtonWidget(
              buttonText: AppString.signin,
              backGroundColor: Colors.black,
              buttonTextColor: Colors.white,
              borderRadius: 10,
              onPressed: () {},
            ),
          ),
          SizedBoxWidget(
            height: 10,
          ),
          TextWidget(
            data: AppString.forgey,
            underline: true,
          ),
          SizedBoxWidget(
            height: 10,
          ),
          TextWidget(
            data: AppString.notRegister,
            underline: true,
            fontSize: 15,
          )
        ]),
      ),
    );
  }
}
