import 'package:flutter/material.dart';
import 'package:tourismandco/models/location.dart';
import 'package:tourismandco/screens/location_detail/text_section.dart';

import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  final int locationId;

  const LocationDetail(this.locationId, {super.key});

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(locationId)!;

    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageBanner(location.imagePath),
              ..._textSections(location)
            ]));
  }

  List<Widget> _textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
