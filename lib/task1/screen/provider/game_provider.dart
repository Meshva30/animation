import 'package:flutter/material.dart';

class GameProvider with ChangeNotifier {
  List<String> list = [
    '🍎',
    '🍓',
    '🍇',
    '🥥',
    '🍋',
    '🍉',
    '🥭',
  ];
  List<String> name = [
    'Apple',
    'Strawberry',
    'Grapes',
    'Coconut',
    'Lemon',
    'Watermelon',
    'Mango',
  ];

  bool gameover = false;
  bool accepting = false;
  int score = 0;
  final Map<int, bool> matchedIndexes = {};

  Map<int, bool> get getMatchedIndexes => matchedIndexes;

  int get getScore => score;

  bool get isGameOver => gameover;

  void matchItem(int index, String data) {
    if (list[index] == data) {
      matchedIndexes[index] = true;
      score += 10;
      list.removeAt(index);
      name.removeAt(index);
    } else {
      score -= 5;
    }
    if (list.isEmpty || name.isEmpty) {
      gameover = true;
    }
    notifyListeners();
  }

  void resetGame() {
    gameover = false;
    score = 0;
    matchedIndexes.clear();
    list = [
      '🍎',
      '🍓',
      '🍇',
      '🥥',
      '🍋',
      '🍉',
      '🥭',
    ];
    name = [
      'Apple',
      'Strawberry',
      'Grapes',
      'Coconut',
      'Lemon',
      'Watermelon',
      'Mango',
    ];
    list.shuffle();
    name.shuffle();
    notifyListeners();
  }
}
