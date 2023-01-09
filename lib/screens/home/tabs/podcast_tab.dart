// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:assignment7_noice_app/data/list.dart';
import 'package:assignment7_noice_app/screens/home/widgets/carousel_image.dart';
import 'package:flutter/material.dart';

class PodcastTab extends StatefulWidget {
  const PodcastTab({Key? key}) : super(key: key);

  @override
  State<PodcastTab> createState() => _PodcastTabState();
}

class _PodcastTabState extends State<PodcastTab> {
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
