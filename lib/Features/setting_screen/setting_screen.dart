import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Core/background_scaffold.dart';
import 'package:tic_tac_toe/Core/theme.dart';
import 'package:tic_tac_toe/Features/setting_screen/counter_view.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: BackgroundScaffold(
        body: Center(
          child: Container(
            color: ProColor.menu_color,
            width: w * .6,
            height: h * .6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text("Music"),
                    CounterView(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
