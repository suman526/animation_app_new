import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyAnimationApp extends StatefulWidget {
  @override
  _MyAnimationAppState createState() => _MyAnimationAppState();
}

class _MyAnimationAppState extends State<MyAnimationApp>
    with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });
    print(animation);
    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

//first page
  @override
  Widget build(BuildContext context) {
    //enclosing in liquid swipe!!
    return LiquidSwipe(
      pages: [
        Container(
          color: Colors.pink[100],
          child: Center(
            child: Card(
              color: Colors.transparent,
              elevation: 0 * animation.value,
              child: GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.5);
                },
                child: Container(
                  width: 200 * animation.value + 50,
                  height: 200 * animation.value + 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/f1.jpg"), fit: BoxFit.fill),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
            ),
          ),
        ),

//2nd page
        Container(
          color: Colors.black,
          child: Center(
            child: Card(
              elevation: 15 * animation.value,
              child: GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.5);
                },
                child: Container(
                  width: 190 * animation.value + 50,
                  height: 200 * animation.value + 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/f2.jpg"), fit: BoxFit.fill),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ),

        //page 3
        Container(
          color: Colors.green[100],
          child: Center(
            child: Card(
              color: Colors.transparent,
              elevation: 0 * animation.value,
              child: GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.5);
                  print("clicked ..");
                },
                child: Container(
                  width: 250 * animation.value + 50,
                  height: 200 * animation.value + 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/f3.jpg"), fit: BoxFit.fill),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ),
    
        //page 4
        Container(
          color: Colors.grey,
          child: Center(
            child: Card(
              color: Colors.transparent,
              elevation: 15 * animation.value,
              child: GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.5);
                },
                child: Container(
                  width: 250 * animation.value + 50,
                  height: 250 * animation.value + 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/f4.jpg"), fit: BoxFit.fill),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
      positionSlideIcon: 0,
    );
  }
}
