import 'package:flutter/material.dart';

class AnimatedSwitcherScreen extends StatefulWidget {
  const AnimatedSwitcherScreen({super.key});

  @override
  State<AnimatedSwitcherScreen> createState() => _AnimatedSwitcherScreenState();
}

class _AnimatedSwitcherScreenState extends State<AnimatedSwitcherScreen> {
  bool _isFirstWidget = true;

  void _toggleWidget() {
    setState(() {
      _isFirstWidget = !_isFirstWidget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Switcher '),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleWidget,
          child: AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(scale: animation,child: child,);
            },
            child: _isFirstWidget
                ? Container(
              key: const ValueKey<int>(1),
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'First Widget',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
                : Container(
              key: const ValueKey<int>(2),
              width: 200,
              height: 200,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Second Widget',
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

void main() {
  runApp(const MaterialApp(
    home: AnimatedSwitcherScreen(),
  ));
}
