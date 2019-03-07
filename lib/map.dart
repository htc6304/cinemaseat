import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController
        .addMarker(MarkerOptions(position: LatLng(22.323222, 114.1699853), infoWindowText: InfoWindowText("Moko","UA")));
  }

  String locStr = "";
  Position p1;

  Future<Widget> _getLocation() async {
    Position p = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    locStr = p.toString();
    p1 = p;
    debugPrint('locStr $locStr');
    mapController.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: new LatLng(p.latitude, p.longitude), zoom: 11.0)));
  }

  Widget getwidget(Widget w) {
    return w;
  }

  Widget build(BuildContext context) {
    // Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.location]);

    _getLocation().then(getwidget);
    return GoogleMap(
        onMapCreated: _onMapCreated,
        options: GoogleMapOptions(
          myLocationEnabled: true,
        ));
    // return Text("this is map page");
  }
}
