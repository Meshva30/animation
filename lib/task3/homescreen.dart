import 'package:flutter/material.dart';

import 'AnimatedAlign.dart';
import 'AnimatedBuilder.dart';
import 'AnimatedContainer.dart';
import 'AnimatedCrossFade.dart';
import 'AnimatedDefaultTextStyle.dart';
import 'AnimatedIcon.dart';
import 'AnimatedList.dart';
import 'AnimatedModalBarrier.dart';
import 'AnimatedOpacity.dart';
import 'AnimatedPadding.dart';
import 'AnimatedPhysicalModel.dart';
import 'AnimatedPositioned.dart';
import 'AnimatedSize.dart';
import 'AnimatedSwitcher.dart';
import 'AnimatedTheme.dart';
import 'DecoratedBoxTransition.dart';
import 'DefaultTextStyleTransition.dart';
import 'FadeTransition.dart';
import 'ImplicitlyAnimatedWidget.dart';
import 'PositionedTransition.dart';
import 'RotationTransition.dart';
import 'ScaleTransition.dart';
import 'SizeTransition.dart';
import 'SlideTransition.dart';
import 'TweenAnimationBuilder.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            AnimatedContainerScreen(),
            AnimatedOpacityScreen(),
            AnimatedPositionedScreen(),
            AnimatedAlignScreen(),
            AnimatedCrossFadeScreen(),
            AnimatedSwitcherScreen(),
            FadeTransitionScreen(),
            ScaleTransitionScreen(),
            SlideTransitionExample(),
            RotationTransitionExample(),
            SizeTransitionExample(),
            PositionedTransitionExample(),
            DecoratedBoxTransitionExample(),
            DefaultTextStyleTransitionExample(),
            AnimatedModalBarrierExample(),
            AnimatedListExample(),
            AnimatedIconExample(),
            AnimatedPhysicalModelExample(),
            AnimatedSizeExample(),
            AnimatedPaddingExample(),
            TweenAnimationBuilderExample(),
            AnimatedBuilderExample(),
            AnimatedDefaultTextStyleExample(),
            AnimatedThemeExample(),
            AnimatedContainerExample()




          ],
        ),
      ),
    );
  }
}
