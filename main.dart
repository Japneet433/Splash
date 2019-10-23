import 'package:flutter/material.dart';
import 'dart:math';
void main()=>runApp(MaterialApp(
  home:MyApp(),
  debugShowCheckedModeBanner: false,
));
class MyApp extends StatefulWidget{
  @override
 _MyAppState createState() => _MyAppState();



}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;
  @override
  void initState(){
    super.initState();
    animationController= AnimationController(vsync:this,
    duration:Duration(seconds:4),)..addListener(()=> setState((){}));
    animation= CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceInOut,
    );
    animationController.forward();


  }
  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Stack(
        children: <Widget>[
          Center(
            child: new Image.asset(
              'assets/images/t3.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: new ScaleTransition(scale: animation,
              child: Container(
                height: 80,
                width: 150,
                child:Text('eDrishti',style:
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize:40.0
                ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
           child:Container(
              child: Row(
                
                children: <Widget>[
                  new ScaleTransition(scale:animation,
                    child: Container(
                        height: 60.0,
                        width:60.0,
                        child: Image.asset('assets/images/Indian_Railway.png'),
                        margin:const EdgeInsets.only(left:50.0,top: 30.0,right: 55.0,bottom: 50.0)
                    ),
                  ),
                  new ScaleTransition(scale:animation,

                    child: Container(
                        height: 60.0,
                        width:60.0,
                        child: Image.asset('assets/images/crislogo.jpg'),
                        margin:const EdgeInsets.only(left:55.0,top: 30.0,right: 70.0,bottom: 50.0)
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}


