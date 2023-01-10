// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:assignment7_noice_app/data/list.dart';
import 'package:assignment7_noice_app/screens/home/widgets/carousel_image.dart';
import 'package:assignment7_noice_app/screens/home/widgets/listview_basic.dart';
import 'package:assignment7_noice_app/screens/home/widgets/listview_circle.dart';
import 'package:assignment7_noice_app/screens/home/widgets/listview_rectangle.dart';
import 'package:assignment7_noice_app/screens/home/widgets/section_title.dart';
import 'package:assignment7_noice_app/screens/home/widgets/section_title_arrow.dart';
import 'package:flutter/material.dart';

class BuatKamuTab extends StatefulWidget {
  const BuatKamuTab({Key? key}) : super(key: key);

  @override
  State<BuatKamuTab> createState() => _BuatKamuTabState();
}

class _BuatKamuTabState extends State<BuatKamuTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CarouselImage(),
              const SizedBox(
                height: 15.0,
              ),
              SectionTitleArrow(title: "Noice Clips"),
              const SizedBox(
                height: 15.0,
              ),
              ListViewCircle(podcastData: PodcastData.playlistPodcast),
              const SizedBox(
                height: 15.0,
              ),
              SectionTitleArrow(title: "Episode Baru"),
              const SizedBox(
                height: 15.0,
              ),
              ListViewRounded(podcastData: PodcastData.playlistPodcast),
              const SizedBox(
                height: 15.0,
              ),
              SectionTitleArrow(title: "Top Episode"),
              const SizedBox(
                height: 15.0,
              ),
              ListViewRectangle(podcastData: PodcastData.rectanglePodcast),
              const SizedBox(
                height: 15.0,
              ),
              SectionTitleArrow(title: "New Year, New You"),
              const SizedBox(
                height: 15.0,
              ),
              ListViewRounded(podcastData: PodcastData.playlistPodcast),
              const SizedBox(
                height: 15.0,
              ),
              SectionTitleArrow(title: "Audio Series Terbaru"),
              const SizedBox(
                height: 15.0,
              ),
              ListViewRounded(podcastData: PodcastData.playlistPodcast),
              const SizedBox(
                height: 15.0,
              ),
              SectionTitleArrow(title: "Noice Live"),
              const SizedBox(
                height: 15.0,
              ),
              ListViewRounded(podcastData: PodcastData.playlistPodcast),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
