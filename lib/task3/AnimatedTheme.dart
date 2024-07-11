import 'package:flutter/material.dart';

class AnimatedThemeExample extends StatefulWidget {
  @override
  _AnimatedThemeExampleState createState() => _AnimatedThemeExampleState();
}

class _AnimatedThemeExampleState extends State<AnimatedThemeExample> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedTheme Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: _toggleTheme,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Toggle Theme',
                    style: TextStyle(color: Colors.white)
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              AnimatedTheme(
                data: _isDarkMode ? ThemeData.light() : ThemeData.dark(),
                duration: Duration(milliseconds: 500),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Theme Changes Here',
                    style:  TextStyle(color: Colors.white)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


