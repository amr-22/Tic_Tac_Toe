import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Core/func.dart';
import 'package:tic_tac_toe/Core/global_data.dart';
import 'package:tic_tac_toe/Core/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './counter_cubit.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List data = ['', '', '', '', '', '', '', '', ''];
  int num = 0;
  List player = ['X', 'O'];
  String temp = '';
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.all(10),
        width: w * .9,
        height: h * .55,
        color: ProColor.board_color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: GridView.builder(
                    itemCount: 9,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: WidgetStatePropertyAll(
                                const EdgeInsets.fromLTRB(5, 0, 5, 2)),
                            
                              backgroundColor:
                                  WidgetStatePropertyAll(ProColor.grid_color),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder())),
                          child: Text(
                            data[index],
                            style: TextStyle(fontSize: 70),
                          ),
                          onPressed: () {
                            setState(() {
                              if (data[index] != 'X' && data[index] != 'O') {
                                if (num % 2 == 0) {
                                  data[index] = player[0];
                                } else {
                                  data[index] = player[1];
                                }
                                num++;
                                temp = data[index];

                                // check part to win
                                if (check(data) == true) {
                                  data = ['', '', '', '', '', '', '', '', ''];
                                  num = 0;
                                  if (temp == 'X') {
                                    context
                                        .read<CounterCubit>()
                                        .incrementPlayer1();
                                    // player1++;
                                  } else {
                                    context
                                        .read<CounterCubit>()
                                        .incrementPlayer2();
                                    // player2++;
                                  }
                                }
                                if (game_over(data) == true) {
                                  data = ['', '', '', '', '', '', '', '', ''];
                                  num = 0;
                                }
                              }
                            });
                          },
                        ),
                      );
                    }))
          ],
        ));
  }
}
