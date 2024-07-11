import 'package:flutter/material.dart';

class AnimatedModalBarrierExample extends StatefulWidget {
  @override
  _AnimatedModalBarrierExampleState createState() => _AnimatedModalBarrierExampleState();
}

class _AnimatedModalBarrierExampleState extends State<AnimatedModalBarrierExample> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _animation;
  bool _isDialogVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = ColorTween(
      begin: Colors.transparent,
      end: Colors.black54,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  void _showDialog() {
    setState(() {
      _isDialogVisible = true;
    });
    _controller.forward();
  }

  void _hideDialog() {
    _controller.reverse().then((_) {
      setState(() {
        _isDialogVisible = false;
      });
    });
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
        title: Text('AnimatedModalBarrier Example'),
      ),
      body: Stack(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _showDialog,
              child: Text('Show AnimatedModalBarrier'),
            ),
          ),
          if (_isDialogVisible)
            AnimatedModalBarrier(
              color: _animation,
              dismissible: false,
            ),
          if (_isDialogVisible)
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
      floatingActionButton: _isDialogVisible
          ? FloatingActionButton(
        onPressed: _hideDialog,
        child: Icon(Icons.close),
      )
          : null,
    );
  }
}

