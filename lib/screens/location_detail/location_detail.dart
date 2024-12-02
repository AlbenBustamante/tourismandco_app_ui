import 'package:flutter/material.dart';
import 'package:tourismandco/screens/location_detail/text_section.dart';

import 'image_banner.dart';

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
              const ImageBanner("assets/images/kiyomizu-dera.jpg"),
              TextSection("summary",
                  "asjdklsajdklajdlk jaslkdj laksjd lkasjdlksajd lkasjdlkasjd klsadj jsadoiawjvn iwahriahdiawd iawd"),
              TextSection("summary",
                  "asjdklsajdklajdlk jaslkdj laksjd lkasjdlksajd lkasjdlkasjd klsadj jsadoiawjvn iwahriahdiawd iawd"),
              TextSection("summary",
                  "asjdklsajdklajdlk jaslkdj laksjd lkasjdlksajd lkasjdlkasjd klsadj jsadoiawjvn iwahriahdiawd iawd")
            ]));
  }
}
