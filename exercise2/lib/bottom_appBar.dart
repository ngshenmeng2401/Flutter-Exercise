import 'package:flutter/material.dart';
import 'each_screen.dart';

class BottomAppBarDemo extends StatefulWidget {

  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {

  List<Widget> eachScreen;
  int index=0;
  
  @override
  void initState() { 
    super.initState();
    eachScreen= List();
    eachScreen..add(EachScreen('Home'))..add(EachScreen('BigMouthMeng'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: eachScreen[index],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachScreen('New Page');
          }));
        },
        tooltip: 'BigMouthMeng',
        child: Icon(
          Icons.add,
          color: Colors.white,
          ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color:Colors.white,
              onPressed: (){
                setState(() {
                  index=0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color:Colors.white,
              onPressed: (){
                setState(() {
                  index=1;
                });
              },
            ),
            
          ],
        ),
      ),
    );
  }
}