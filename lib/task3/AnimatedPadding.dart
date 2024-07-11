import 'package:flutter/material.dart';

class AnimatedPaddingExample extends StatefulWidget {
  @override
  _AnimatedPaddingExampleState createState() => _AnimatedPaddingExampleState();
}

class _AnimatedPaddingExampleState extends State<AnimatedPaddingExample> {
  double _paddingValue = 20.0;
  bool _isExpanded = false;

  void _togglePadding() {
    setState(() {
      _isExpanded = !_isExpanded;
      _paddingValue = _isExpanded ? 40.0 : 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _togglePadding,
          child: AnimatedPadding(
            duration: Duration(milliseconds: 500),
            padding: EdgeInsets.all(_paddingValue),
            curve: Curves.easeInOut,
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  'Tap to Expand/Collapse',
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


