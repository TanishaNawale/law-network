import 'package:baap_market/constant/app_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      // This bool value toggles the switch.
      value: light,
      activeColor: AppColors.black,
      activeTrackColor: AppColors.gray,
   inactiveThumbColor:AppColors.gray ,
      dragStartBehavior:DragStartBehavior.start,
      onChanged: (bool value) {
        
        // This is called when the user toggles the switch.
        setState(() {
          
        light= value;
        });
      },
    );
  }
}
