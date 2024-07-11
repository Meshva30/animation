import 'package:flutter/material.dart';

class DefaultTextStyleTransitionExample extends StatefulWidget {
  @override
  _DefaultTextStyleTransitionExampleState createState() => _DefaultTextStyleTransitionExampleState();
}

class _DefaultTextStyleTransitionExampleState extends State<DefaultTextStyleTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<TextStyle> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = TextStyleTween(
      begin: TextStyle(
        color: Colors.blue,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
      end: TextStyle(
        color: Colors.red,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.repeat(reverse: true); // Start the animation and keep repeating
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyleTransition Example'),
      ),
      body: Center(
        child: DefaultTextStyleTransition(
          style: _animation,
          child: Text('Animating Text'),
        ),
      ),
    );
  }
}
