import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  const AnimatedAlignScreen({super.key});

  @override
  State<AnimatedAlignScreen> createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {

  Alignment alignment = Alignment.topLeft;

  // Method to change the alignment
  void _changeAlignment() {
    setState(() {
      if (alignment == Alignment.topLeft) {
        alignment = Alignment.bottomRight;
      } else {
        alignment = Alignment.topLeft;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: _changeAlignment,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: AnimatedAlign(
            alignment: alignment,
            duration: const Duration(seconds: 10),
            curve: Curves.easeInOut,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  ' Hello! ',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: AnimatedAlignScreen(),
  ));
}
