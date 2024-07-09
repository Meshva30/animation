import 'package:flutter/material.dart';

class GameProvider with ChangeNotifier {
  List<String> list = [
    '🍎',
    '🍓',
    '🍇',
    '🥥',
    '🍋',
  ];
  List<String> name = [
    'Apple',
    'Strawberry',
    'Grapes',
    'Coconut',
    'Lemon',
  ];

  bool accepting = false;
  int Score = 0;

  final Map<int, bool> MatchedIndexes = {};

  Map<int, bool> get matchedIndexes => MatchedIndexes;

  int get score => Score;

  void matchItem(int index, String data) {
    if (list[index] == data) {
      MatchedIndexes[index] = true;
      list.remove(data);

      Score += 10;
    } else {
      Score -= 5;
    }
    notifyListeners();
  }
}
