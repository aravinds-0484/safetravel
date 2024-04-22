import 'package:flutter_map/flutter_map.dart';
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
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(51.5, -0.09),
          zoom: 13.0,
        ),
        layers: [
          TileLayerOptions(
            utlTemplater: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a','b','c']
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: LatLng(51.5, -0.09),
                builder: (ctx) =>
                Container(
                  child: FlutterLogo(),
                ),
              ),
            ],
          ),
        ],
      );
    )
  }
}


