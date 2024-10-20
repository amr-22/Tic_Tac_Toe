class PlayerState {
  late final int player1;
  late final int player2;

  PlayerState({required this.player1, required this.player2});

  PlayerState copyWith({int? player1, int? player2}) {
    return PlayerState(
      player1: player1 ?? this.player1,
      player2: player2 ?? this.player2,
    );
  }
}
