import 'package:flutter/material.dart';

class FadeTransitionScreen extends StatefulWidget {
  const FadeTransitionScreen({super.key});

  @override
  State<FadeTransitionScreen> createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _showFirstWidget = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleFade() {
    if (_controller.isCompleted) {
      setState(() {
        _showFirstWidget = !_showFirstWidget;
      });
      _controller.reverse();
    } else if (_controller.isDismissed) {
      setState(() {
        _showFirstWidget = !_showFirstWidget;
      });
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fade Transition Example'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleFade,
          child: FadeTransition(
            opacity: _animation,
            child: _showFirstWidget
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

