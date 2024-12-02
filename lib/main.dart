import 'package:flutter/material.dart';
import 'package:tourismandco/screens/location_detail/location_detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LocationDetail()
    );
  }
}
