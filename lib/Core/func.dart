bool check(List l) {
  if (l[0] == l[1] && l[1] == l[2] && (l[0] == 'X' || l[0] == 'O')) {
    return true;
  }
  if (l[3] == l[4] && l[4] == l[5] && (l[3] == 'X' || l[3] == 'O')) {
    return true;
  }
  if (l[6] == l[7] && l[7] == l[8] && (l[6] == 'X' || l[6] == 'O')) {
    return true;
  }
  if (l[0] == l[3] && l[3] == l[6] && (l[0] == 'X' || l[0] == 'O')) {
    return true;
  }
  if (l[1] == l[4] && l[4] == l[7] && (l[1] == 'X' || l[1] == 'O')) {
    return true;
  }
  if (l[2] == l[5] && l[5] == l[8] && (l[2] == 'X' || l[2] == 'O')) {
    return true;
  }
  if (l[0] == l[4] && l[4] == l[8] && (l[0] == 'X' || l[0] == 'O')) {
    return true;
  }
  if (l[2] == l[4] && l[4] == l[6] && (l[2] == 'X' || l[2] == 'O')) {
    return true;
  }
  return false;
}

bool game_over(List l) {
  for (int i = 0; i < 9; i++) {
    if (l[i] == '') {
      return false;
    }
  }

  return true;
}
