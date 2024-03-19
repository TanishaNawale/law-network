import 'package:baap_market/presentation/login_screen/carousel_screen.dart';
import 'package:baap_market/util/routes/routing.dart';

import 'package:baap_market/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 550,
            child: HomePage(),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 120,
                    child: TextButtonWidget(
                      buttonText: 'Sign In',
                      buttonTextColor: const Color.fromARGB(255, 26, 25, 25),
                      borderRadius: 10,
                      borderColor: Colors.black,
                      onPressed: () {
                        context.push(Routes.phoneScreen);
                      },
                    )),
                TextButtonWidget(
                  buttonText: 'Build a Case',
                  backGroundColor: Colors.black,
                  buttonTextColor: Colors.white,
                  borderRadius: 10,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
