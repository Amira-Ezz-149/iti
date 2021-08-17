import 'package:iti_training/screens/page2.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
int counter = 0;

  void increment(){
    counter ++ ;
    setState(() {

    });
    print(counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              SizedBox(
                  width: 200,
                  height: 200,
                  child: FlutterLogo(
                    size: 40,
                  ),),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                ),
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shadowColor: Colors.blue, elevation: 10),

                  onPressed: () {},
                  child: Text(
                    'login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              TextButton(
                child: Text(
                  'Forget Password? No yawa. Tap me',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom:15.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo(counter: counter,)));

                    },
                    child: Text(
                      'No Account? Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
             Text('$counter',
               style: TextStyle(color:Colors.red,fontSize: 30, fontWeight: FontWeight.bold),
             ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
   increment();
   //print(counter);
   },
      ),
    );
  }
}
