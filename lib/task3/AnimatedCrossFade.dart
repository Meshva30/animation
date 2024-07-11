import 'package:flutter/material.dart';

class AnimatedCrossFadeScreen extends StatefulWidget {
  const AnimatedCrossFadeScreen({super.key});

  @override
  State<AnimatedCrossFadeScreen> createState() => _AnimatedCrossFadeScreenState();
}

class _AnimatedCrossFadeScreenState extends State<AnimatedCrossFadeScreen> {
  bool showFirst = true;

  void toggleShow() {
    setState(() {
      showFirst = !showFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CrossFade'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggleShow,
          child: AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.blue.shade400,
              child: const Center(
                child: Text(
                  'First Child',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            secondChild: Container(
              width: 200,
              height: 200,
              color: Colors.purple,
              child: const Center(
                child: Text(
                  'Second Child',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            crossFadeState: showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}

