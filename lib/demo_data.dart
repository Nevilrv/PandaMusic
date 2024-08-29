import 'package:bubble_showcase/bubble_showcase.dart';
import 'package:flutter/material.dart';

class DemoData extends StatefulWidget {
  const DemoData({Key? key}) : super(key: key);

  @override
  State<DemoData> createState() => _DemoDataState();
}

class _DemoDataState extends State<DemoData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: BubbleShowcase(
  bubbleShowcaseId: 'my_bubble_showcase',
  bubbleShowcaseVersion: 1,
  bubbleSlides: [
    AbsoluteBubbleSlide(
      positionCalculator: (size) => Position(
        top: 0,
        right: 0,
        bottom: 0,
        left: 0,
      ),
      child: AbsoluteBubbleSlideChild(
        positionCalculator: (size) => Position(
          top: 0,
          left: 0,
        ),
        widget: SpeechBubble(
          nipLocation: NipLocation.LEFT,
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'This is the top left corner of your app.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  ],
  child: MyMainWidget(),
);
    );
  }
}
