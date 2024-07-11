import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  @override
  _AnimatedSizeExampleState createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  void _toggleSize() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: _toggleSize,
              child: Container(
                color: Colors.blue,
                width: 200,
                height: _isExpanded ? 200 : 100,
                child: Center(
                  child: Text(
                    _isExpanded ? 'Shrink' : 'Expand',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedSize(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(
                width: _isExpanded ? 200 : 100,
                height: _isExpanded ? 200 : 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'AnimatedSize',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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

