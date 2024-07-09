import 'package:animation/task1/screen/provider/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MatchingScreen extends StatelessWidget {
  const MatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gameProvider = Provider.of<GameProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Matching Game',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Score: ${gameProvider.getScore}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: List.generate(
                      gameProvider.list.length,
                          (index) => Draggable<String>(
                        data: gameProvider.list[index],
                        feedback: container(gameProvider.list[index]),
                        child: container(gameProvider.list[index]),
                        childWhenDragging: container(gameProvider.list[index]),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      gameProvider.name.length,
                          (index) => DragTarget<String>(
                        onWillAccept: (data) => true,
                        onAccept: (data) {
                          gameProvider.matchItem(index, data);
                        },
                        onLeave: (data) {
                          gameProvider.accepting = false;
                        },
                        builder: (context, candidateData, rejectedData) =>
                            nameContainer(
                              gameProvider.name[index],
                              gameProvider.getMatchedIndexes[index] == true,
                              gameProvider.accepting,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container nameContainer(String name, bool matched, bool accepting) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        color: matched ? Colors.green : (accepting ? Colors.red : Colors.blue),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Container container(String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 75,
      width: 100,
      child: Text(
        text,
        style: const TextStyle(fontSize: 60),
      ),
    );
  }
}
