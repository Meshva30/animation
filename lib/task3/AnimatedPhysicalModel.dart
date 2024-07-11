import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  _AnimatedPhysicalModelExampleState createState() => _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  bool _isRaised = false;

  void _toggleRaised() {
    setState(() {
      _isRaised = !_isRaised;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPhysicalModel Example'),
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          elevation: _isRaised ? 8.0 : 0.0,
          shape: BoxShape.rectangle,
          shadowColor: Colors.black,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                'Animated\nPhysicalModel',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleRaised,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}