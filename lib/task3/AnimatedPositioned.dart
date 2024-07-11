import 'package:flutter/material.dart';

class AnimatedPositionedScreen extends StatefulWidget {
  const AnimatedPositionedScreen({super.key});

  @override
  State<AnimatedPositionedScreen> createState() => _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool isTopLeft = true;

  void _togglePosition() {
    setState(() {
      isTopLeft = !isTopLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Positioned'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: isTopLeft ? 50.0 : 300.0,
            left: isTopLeft ? 50.0 : 300.0,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: GestureDetector(
              onTap: _togglePosition,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue.shade900,
                child: const Center(
                  child: Text(
                    ' Hy !!',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


