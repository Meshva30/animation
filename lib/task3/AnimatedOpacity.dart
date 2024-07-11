import 'package:flutter/material.dart';

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  double opacity = 1.0;
  bool isVisible = true;

  void toggleOpacity() {
    setState(() {
      opacity = isVisible ? 0.0 : 1.0;
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggleOpacity,
          child: AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 1),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.pink.shade900,
              child: const Center(
                child: Text(
                  ' HY !!!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

