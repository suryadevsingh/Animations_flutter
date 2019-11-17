
import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() => runApp(AnimatedLogo());

class AnimatedLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                child: Animator(

                  duration:Duration(seconds: 4),
                  tween: Tween<double>(begin: 0, end:200),
                  cycles: 0,
                  builder: (anim)=> Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: anim.value,
                      width: anim.value,
                      child: FlutterLogo(),
                    ),
                  ),
                ),
              ),
              Container(
                child: Animator(
                  repeats: 100,
                  builder: (anim)=> Opacity(
                    opacity:anim.value,
                    child: FlutterLogo(
                      size: 40,
                    ),
                  ),
                ),
              ),

              Container(
                child: Animator(
                  repeats: 100,
                  builder: (anim)=> Opacity(
                    opacity:anim.value,
                    child: MaterialButton(
                      color: Colors.pink,
                        child: Text("click"),
                        onPressed: (){}),
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