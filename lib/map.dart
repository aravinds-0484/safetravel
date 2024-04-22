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
            utlTemplater: "https://api.mapbox.com/styles/v1/wavboi/clvaybfrz00tw01qu0fs49dbl/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoid2F2Ym9pIiwiYSI6ImNsdXd5OHU2cTBlcG8ycW53ZWtxcGtnczQifQ.0Nyj5M8i7PDpOPIicxP0EQ",
            additionalOptions: {
              'accessToken': 'pk.eyJ1Ijoid2F2Ym9pIiwiYSI6ImNsdXd5OHU2cTBlcG8ycW53ZWtxcGtnczQifQ.0Nyj5M8i7PDpOPIicxP0EQ',
              'id':'pk.eyJ1Ijoid2F2Ym9pIiwiYSI6ImNsdXd5OHU2cTBlcG8ycW53ZWtxcGtnczQifQ.0Nyj5M8i7PDpOPIicxP0EQ'
            }
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


