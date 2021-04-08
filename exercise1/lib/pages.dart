import 'package:flutter/material.dart';
import 'custom_router.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('First Page',style: TextStyle(fontSize: 36.0,color: Colors.white)),
        elevation: 0.0, //default=4.0
      ),
      body: Center(
        child: MaterialButton(
          child:Icon(
            Icons.navigate_next,
            color:Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.pinkAccent,
    appBar: AppBar(
      title: Text('Second Page',style: TextStyle(fontSize: 36.0,color: Colors.white,)),
      backgroundColor: Colors.pinkAccent,
      leading: Container(),
      elevation: 0.0, //default=4.0
      ),
      body: Center(
        child: MaterialButton(
          child:Icon(
            Icons.navigate_before,
            color:Colors.white,
            size: 64.0,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}