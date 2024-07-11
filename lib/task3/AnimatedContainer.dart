import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {

  double width = 100.0;
  double height = 100.0;
  Color color = Colors.blue;
  BorderRadiusGeometry borderRadius = BorderRadius.circular(8.0);
  bool isselected = true;


  void changeContainer() {
    setState(() {
      if (isselected) {
        width = 200.0;
        height = 200.0;
        color = Colors.blueGrey;
        borderRadius = BorderRadius.circular(50.0);
      } else {
        width = 100.0;
        height = 100.0;
        color = Colors.pink.shade300;
        borderRadius = BorderRadius.circular(8.0);
      }
      isselected = !isselected; // Toggle the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeContainer,
          child: AnimatedContainer(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: borderRadius,
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}
