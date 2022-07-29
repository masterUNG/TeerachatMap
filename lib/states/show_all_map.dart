import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:teerachatmap/models/listdatamap_model.dart';
import 'package:teerachatmap/widgets/show_progress.dart';

class ShowAllMap extends StatefulWidget {
  const ShowAllMap({Key? key}) : super(key: key);

  @override
  State<ShowAllMap> createState() => _ShowAllMapState();
}

class _ShowAllMapState extends State<ShowAllMap> {
  var listDataMapModels = <ListDataMapModel>[];
  Map<MarkerId, Marker> mapMarkers = {};

  @override
  void initState() {
    super.initState();
    loadListDataMap();
  }

  Future<void> loadListDataMap() async {
    String result = await rootBundle.loadString('assets/listdatamap.json');
    // print('reslut ==> $result');
    for (var element in json.decode(result)) {
      // print('element ==> $element');
      ListDataMapModel listDataMapModel = ListDataMapModel.fromMap(element);
      listDataMapModels.add(listDataMapModel);

      MarkerId markerId = MarkerId(listDataMapModel.id);
      Marker marker = Marker(
        markerId: markerId,
        position: LatLng(double.parse(listDataMapModel.lat),
            double.parse(listDataMapModel.lng)),
            infoWindow: InfoWindow(title: listDataMapModel.title)
      );
      mapMarkers[markerId] = marker;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: listDataMapModels.isEmpty
          ? const ShowProgress()
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(13.70422404767295, 100.53083901627147),
                zoom: 6,
              ),
              onMapCreated: (controller) {},
              markers: Set<Marker>.of(mapMarkers.values),
            ),
    );
  }
}
