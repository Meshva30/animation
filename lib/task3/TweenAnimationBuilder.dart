import 'package:flutter/material.dart';

class TweenAnimationBuilderExample extends StatefulWidget {
  @override
  _TweenAnimationBuilderExampleState createState() => _TweenAnimationBuilderExampleState();
}

class _TweenAnimationBuilderExampleState extends State<TweenAnimationBuilderExample> {
  double _width = 100.0;
  bool _isExpanded = false;

  void _toggleSize() {
    setState(() {
      _isExpanded = !_isExpanded;
      _width = _isExpanded ? 200.0 : 100.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimationBuilder Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleSize,
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 100.0, end: _width),
            duration: Duration(milliseconds: 500),
            builder: (BuildContext context, double value, Widget? child) {
              return Container(
                width: value,
                height: 100.0,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Tap to Expand/Collapse',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
