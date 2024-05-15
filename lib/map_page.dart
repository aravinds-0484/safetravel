import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart'; // Import Geocoding package
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  final String destination;

  const MapPage({Key? key, required this.destination}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

StreamSubscription<ServiceStatus> serviceStatusStream =
    Geolocator.getServiceStatusStream().listen((ServiceStatus status) {
  print(status);
});

class _MapPageState extends State<MapPage> {
  LatLng _current = LatLng(
      10.03218436502689, 76.37504664650086); // Initialize with default values
  LatLng _destination = LatLng(
      10.03218436502689, 76.37504664650086); // Initialize with default values
  BitmapDescriptor? _currentLocationIcon;

  @override
  void initState() {
    super.initState();
    // Call the function to get the LatLng for current and destination locations
    _getCurrentLocationLatLng();
    _getDestinationLatLng();
    _setCustomMarker();
  }

  Future<void> _setCustomMarker() async {
    _currentLocationIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(48, 48)),
      'assets/current_location.png',
    );
    setState(() {});
  }

  Future<LatLng> _getCurrentLocationLatLng() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      // Request location permission
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }

      // Get the current position
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      setState(() {
        LatLng _current = LatLng(position.latitude, position.longitude);
        print('current location: $_current');
      });
    } catch (e) {
      print('Error getting current location: $e');
    }
    return _current;
  }

  Future<void> _getDestinationLatLng() async {
    try {
      // Get the LatLng for destination location
      LatLng destinationLocation =
          await getLatLngFromPlaceName(widget.destination);
      setState(() {
        _destination = destinationLocation;
        print('$_destination');
      });
    } catch (e) {
      print('Error getting destination location: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _current, // Use _current
          zoom: 10,
        ),
        markers: {
          if (_currentLocationIcon != null)
            Marker(
              markerId: MarkerId("currentLocation"),
              icon: BitmapDescriptor.defaultMarker,
              position: _current,
            ),
          Marker(
            markerId: MarkerId("destination"),
            icon: BitmapDescriptor.defaultMarker,
            position: _destination,
          ),
        },
      ),
    );
  }
}

// Function to get LatLng from place name
Future<LatLng> getLatLngFromPlaceName(String placeName) async {
  // Create a Geocoding object.
  GeocodingPlatform? geocoding = GeocodingPlatform.instance;

  // Make a request to the Geocoding API.
  List<Location> locations = await geocoding!.locationFromAddress(placeName);

  // Get the latitude and longitude from the first result.
  LatLng latLng = LatLng(locations.first.latitude, locations.first.longitude);

  // Return the latitude and longitude.
  return latLng;
}
