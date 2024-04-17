import 'package:flutter/material.dart'

void main()
{
  runApp(MapApp());
}

class MapApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map'
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    ); //MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: 
    )
  }
}



