import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Features/game_screen/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/Features/game_screen/gameboard.dart';
import 'package:tic_tac_toe/Features/game_screen/scoreboard.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 251, 193, 45),
              image: DecorationImage(
                  image: AssetImage("assets/background_image.jpg"),
                  fit: BoxFit.cover,
                  opacity: .5),
            ),
            child: Center(
              child: Column(
                children: [
                  // score board part in screen
                  SizedBox(height: h * .05),
                  ScoreBoard(),
                  SizedBox(height: h * .02),
                  GameBoard()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
