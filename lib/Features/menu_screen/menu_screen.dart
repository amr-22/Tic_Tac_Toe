import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Core/background_scaffold.dart';
import 'package:tic_tac_toe/Core/theme.dart';
import 'package:tic_tac_toe/Features/game_screen/game_screen.dart';
import 'package:tic_tac_toe/Features/setting_screen/setting_screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GameScreen()),
                );
              },
              child: Container(
                height: h * .08,
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "MultiPlayer",
                    )),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ProColor.menu_button_color),
                  minimumSize: WidgetStatePropertyAll(
                    Size(
                      w * .5,
                      h * .1,
                    ),
                  ),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
            ElevatedButton(
              onPressed: null,
              child: Container(
                height: h * .08,
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "SinglePlayer",
                    )),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ProColor.menu_button_color),
                  minimumSize: WidgetStatePropertyAll(
                    Size(
                      w * .5,
                      h * .1,
                    ),
                  ),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
            ElevatedButton(
              onPressed: null,
            
              
              child: Container(
                height: h * .08,
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Setting",
                    )),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ProColor.menu_button_color),
                  minimumSize: WidgetStatePropertyAll(
                    Size(
                      w * .5,
                      h * .1,
                    ),
                  ),
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
            ),
          ],
        ),
      ),
    )));
  }
}
