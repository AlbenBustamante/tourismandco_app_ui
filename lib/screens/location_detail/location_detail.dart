import 'package:flutter/material.dart';
import 'package:tourismandco/screens/location_detail/text_section.dart';

class LocationDetail extends StatelessWidget {
  const LocationDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Location Detail")),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextSection(Colors.red),
              TextSection(Colors.green),
              TextSection(Colors.blue)
            ]));
  }
}
