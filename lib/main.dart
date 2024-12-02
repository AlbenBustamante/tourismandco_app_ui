import 'package:flutter/material.dart';
import 'package:tourismandco/screens/location_detail/location_detail.dart';
import 'package:tourismandco/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const LocationDetail(),
        theme: ThemeData(
            appBarTheme: const AppBarTheme(titleTextStyle: appBarTextStyle),
            textTheme: const TextTheme(
                titleLarge: titleLargeTextStyle,
                bodyMedium: bodyTextMediumStyle)));
  }
}
