import 'package:flutter/material.dart';

class PositionedTransitionExample extends StatefulWidget {
  @override
  _PositionedTransitionExampleState createState() => _PositionedTransitionExampleState();
}

class _PositionedTransitionExampleState extends State<PositionedTransitionExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0), // Start position
      end: RelativeRect.fromLTRB(100, 100, 0, 0), // End position
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
        title: Text('PositionedTransition Example'),
      ),
      body: Center(
        child: Stack(
          children: [
            PositionedTransition(
              rect: _animation,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Moving Box',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
