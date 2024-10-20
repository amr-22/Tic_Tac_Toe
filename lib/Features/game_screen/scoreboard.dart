import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tic_tac_toe/Core/global_data.dart';
import 'package:tic_tac_toe/Core/theme.dart';
import 'package:tic_tac_toe/Features/game_screen/counter_cubit.dart';
import 'package:tic_tac_toe/Features/game_screen/counter_state.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({super.key});

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return BlocBuilder<CounterCubit, PlayerState>(
      builder: (context, state) {
        return Container(
          // color: Colors.grey[20],
          height: h * .1,
          width: w * .9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: h * .1,
                width: w * .3,
                color: ProColor.score_board_color,
                child: Column(children: [
                  Container(
                    height: h * .06,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Player 1",
                        )),
                  ),
                  Container(
                    height: h * .035,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "X",
                        )),
                  ),
                ]),
              ),
              Container(
                width: w * .08,
                child: FittedBox(
                    fit: BoxFit.contain, child: Text(state.player1.toString())),
              ),
              Container(
                width: w * .1,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text("VS"),
                ),
              ),
              Container(
                width: w * .08,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(state.player2.toString()),
                ),
              ),
              Container(
                height: h * .1,
                width: w * .3,
                color: ProColor.score_board_color,
                child: Column(children: [
                  Container(
                    height: h * .06,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "Player 2",
                        )),
                  ),
                  Container(
                    height: h * .03,
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          "O",
                        )),
                  ),
                ]),
              )
            ],
          ),
        );
      },
    );
  }
}
