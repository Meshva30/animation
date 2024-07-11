import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleExampleState createState() => _AnimatedDefaultTextStyleExampleState();
}

class _AnimatedDefaultTextStyleExampleState extends State<AnimatedDefaultTextStyleExample> {
  bool _isBold = false;

  void _toggleTextStyle() {
    setState(() {
      _isBold = !_isBold;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleTextStyle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                style: _isBold
                    ? TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blue)
                    : TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.red),
                child: Text('Tap Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

