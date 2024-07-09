# Animation Flutter

A simple matching game built with Flutter. The game involves matching parts of images of fruits to their corresponding halves. The game displays an alert dialog when the player either wins by matching all parts correctly or loses after exhausting all attempts.

## Features

- Drag and match items
- Simple and intuitive UI
- Easy to understand and extend

## Code Sample

```dart
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
        elevation: 10,
        shadowColor: Colors.black,

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
              gameProvider.isGameOver
                  ? Center(
                    child: Column(

                                    children: [
                    Text(
                      'Game Over!',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        gameProvider.resetGame();
                      },
                      child: const Text('Play Again'),
                    ),
                                    ],
                                  ),
                  )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: List.generate(
                      gameProvider.list.length,
                          (index) => Draggable<String>(
                        data: gameProvider.list[index],
                        feedback: container(gameProvider.list[index]),
                        child: container(gameProvider.list[index]),
                        childWhenDragging:
                        container(gameProvider.list[index]),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      gameProvider.name.length,
                          (index) => DragTarget<String>(
                        onWillAcceptWithDetails: (data) => true,
                        onAcceptWithDetails: (data) {
                          gameProvider.matchItem(index, data.data);
                        },
                        onLeave: (data) {
                          gameProvider.accepting = false;
                        },
                        builder:
                            (context, candidateData, rejectedData) =>
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

```


### 
<h3 align="center"><i>Images</i></h3>

###

<div align="center">

<img src="https://github.com/Meshva30/animation/assets/136339359/8a37717a-0135-4f28-9abe-97cbb6f11b31" height=500px hspace=20>


</div>

###
<h3 align="center"><i>Video</i></h3>
<div align="center">    
<video src = "https://github.com/Meshva30/animation/assets/136339359/d54d3a61-4330-4f84-ac21-299f519a3ead">
</div>


