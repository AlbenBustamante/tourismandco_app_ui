import 'package:flutter/material.dart';
import 'package:tourismandco/screens/location_detail/location_detail.dart';
import 'package:tourismandco/screens/locations/locations.dart';
import 'package:tourismandco/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Locations(), theme: _theme(), onGenerateRoute: _routes);
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: const AppBarTheme(titleTextStyle: appBarTextStyle),
        textTheme: const TextTheme(
            titleLarge: titleLargeTextStyle, bodyMedium: bodyTextMediumStyle));
  }

  Route _routes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _route(const Locations());
      case '/location-detail':
        return _route(LocationDetail(settings.arguments as int));
      default:
        return _route(const Locations());
    }
  }

  Route<dynamic> _route(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
