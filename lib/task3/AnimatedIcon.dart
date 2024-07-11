import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedIconExample extends StatefulWidget {
  @override
  _AnimatedIconExampleState createState() => _AnimatedIconExampleState();
}

class _AnimatedIconExampleState extends State<AnimatedIconExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlay() {
    setState(() {
      _isPlaying = !_isPlaying;
      if (_isPlaying) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedIcon Example'),
      ),
      body: Center(
        child: Text(
          'Tap the button to animate the icon',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePlay,
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause, // Use built-in animated icon
          progress: _controller,
        ),
      ),
    );
  }
}
