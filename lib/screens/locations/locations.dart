import 'package:flutter/material.dart';
import 'package:tourismandco/models/location.dart';
import 'package:tourismandco/screens/location_detail/location_detail.dart';

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
                    onTap: _onLocationTap(context, location.id),
                    child: Text(location.name)))
                .toList()));
  }

  _onLocationTap(BuildContext context, int locationId) {
    if (context.mounted) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LocationDetail(locationId)));
    }
  }
}
