import 'package:animation/screen/provider/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/matching_game.dart';

class MatchingScreen extends StatelessWidget {
  const MatchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gameprovider = Provider.of<GameProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
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
                'Score: ${gameprovider.score}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: List.generate(
                      gameprovider.list.length,
                      (index) => Draggable<String>(
                        data: gameprovider.list[index],
                        feedback: container(gameprovider.list[index]),
                        child: container(gameprovider.list[index]),
                        childWhenDragging: container(gameprovider.list[index]),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      gameprovider.name.length,
                      (index) => DragTarget<String>(
                        onWillAcceptWithDetails: (data) => true,
                        onAcceptWithDetails: (details) {
                          gameprovider.matchItem(index, details.data);
                        },
                        onLeave: (data) {
                          gameprovider.accepting = false;
                        },
                        builder: (context, candidateData, rejectedData) =>
                            namecontainer(
                          gameprovider.name[index],
                          gameprovider.matchedIndexes[index] == true,
                          gameprovider.accepting,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container namecontainer(String name, bool matched, bool accepting) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        color: matched ? Colors.green : (accepting ? Colors.red : Colors.blue),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

Container container(String text) {
  return Container(
    margin: EdgeInsets.all(10),
    height: 75,
    width: 100,
    child: Text(
      text,
      style: TextStyle(fontSize: 60),
    ),
  );
}
