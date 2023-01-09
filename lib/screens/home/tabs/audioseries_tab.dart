// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:assignment7_noice_app/screens/home/widgets/carousel_image.dart';
import 'package:flutter/material.dart';

class AudioSeriesTab extends StatefulWidget {
  const AudioSeriesTab({Key? key}) : super(key: key);

  @override
  State<AudioSeriesTab> createState() => _AudioSeriesTabState();
}

class _AudioSeriesTabState extends State<AudioSeriesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CarouselImage(),
            ],
          ),
        ),
      ),
    );
  }
}
