import 'package:flutter/material.dart';
import 'package:tourismandco/models/location.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(title: const Text("Locations")),
        body: ListView(
            children: locations
                .map((location) => GestureDetector(
                    onTap: () {
                      _onLocationTap(context, location.id);
                    },
                    child: Text(location.name)))
                .toList()));
  }

  _onLocationTap(BuildContext context, int locationId) {
    Navigator.pushNamed(context, '/location-detail', arguments: locationId);
  }
}
