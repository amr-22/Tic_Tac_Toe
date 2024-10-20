import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<PlayerState> {
  CounterCubit() : super(PlayerState(player1: 0, player2: 0));

  void incrementPlayer1() {
    emit(state.copyWith(player1: state.player1 + 1));
  }

  void incrementPlayer2() {
    emit(state.copyWith(player2: state.player2 + 1));
  }
}
