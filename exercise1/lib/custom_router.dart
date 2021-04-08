import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder{

  final Widget widget;

  CustomRoute(this.widget)
  :super(
    transitionDuration: Duration(seconds:2),
    pageBuilder: (
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,

    ){
      return widget;
    },
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child
    ){


      // return FadeTransition(
      //   opacity: Tween(begin: 0.0,end: 1.0)
      //   .animate(CurvedAnimation(
      //     parent: animation1, 
      //     curve: Curves.fastLinearToSlowEaseIn)),
      //     child: child,
      // );
      
      //缩放动画效果
      // return ScaleTransition(
      //   scale: Tween(begin: 0.0,end: 1.0)
      //   .animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: child,  
      // );
        
      //旋转+缩放动画效果
      // return RotationTransition(
      //   turns: Tween(begin: 0.0,end: 1.0)
      //   .animate(CurvedAnimation(
      //     parent:animation1,
      //     curve:Curves.fastOutSlowIn,
      //   )),
      //   child: ScaleTransition(
      //     scale: Tween(begin: 0.0,end: 1.0)
      //     .animate(CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn,
      //     )),
      //   child: FadeTransition(
      //     opacity:Tween(begin: 0.0,end: 1.0)
      //     .animate(CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn,
      //     )),
      //     child: child,
      //   ),
      //   ),
      // );
      
      //左右滑动效果
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0,0.0),
          end: Offset(0.0,0.0),
        ).animate(CurvedAnimation(
          parent: animation1, 
          curve: Curves.elasticInOut)),
          child: child,
      );
    }
  );
}