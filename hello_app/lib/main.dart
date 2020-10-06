import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp()); 
}

class MyApp extends StatelessWidget{
  @override
  Widget build(context){
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red,
      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String mytext = 'Hello World';

  @override
  Widget build(context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home Page'),
      ),
      body: _bodyWidget(),
    );
  }


  void _changeText(){
    setState(() {
       if(mytext.startsWith("H")){
         mytext = 'Welcome to my app';
       }
       else{
         mytext = "Hello World"; 
       }
    });
  }


   Widget _bodyWidget(){
     return new Container(
       padding: const EdgeInsets.all(10.0),
       child: new Center(
         child: new Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text(mytext, style: TextStyle(
               fontSize: 30.0,
             ),),
             new RaisedButton(
               child: new Text('Click', style: new TextStyle(
                 color: Colors.white,
                 fontSize: 20.0,
               ),),
               onPressed: _changeText,
               color: Colors.red,
              )
           ],
         ),
       ),
     );
   }


}