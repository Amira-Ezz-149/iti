import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  final int counter;
  PageTwo({this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'welcome to page two',
            style: TextStyle(color: Colors.blue, fontSize: 40, fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 30,),
          Text('$counter',
            style: TextStyle(color:Colors.red,fontSize: 30, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
