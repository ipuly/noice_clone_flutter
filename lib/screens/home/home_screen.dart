import 'package:assignment7_noice_app/screens/home/tabs/audiobook_tab.dart';
import 'package:assignment7_noice_app/screens/home/tabs/audioseries_tab.dart';
import 'package:assignment7_noice_app/screens/home/tabs/buatkamu_tab.dart';
import 'package:assignment7_noice_app/screens/home/tabs/podcast_tab.dart';
import 'package:assignment7_noice_app/screens/home/tabs/radio_tab.dart';
import 'package:assignment7_noice_app/screens/home/widgets/searchbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: true,
                  centerTitle: true,
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/logo.jpg",
                      ),
                    ),
                  ),
                  title: SearchBar(),
                  actions: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          right: 10.0,
                        ),
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                  bottom: TabBar(
                    labelPadding: EdgeInsets.only(left: 8, right: 8),
                    indicatorColor: Colors.yellow,
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(text: "Buat Kamu"),
                      Tab(text: 'Podcast'),
                      Tab(text: 'Audioseries'),
                      Tab(text: 'Radio'),
                      Tab(text: "Audiobook")
                    ],
                  ),
                ),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              BuatKamuTab(),
              PodcastTab(),
              AudioSeriesTab(),
              RadioTab(),
              AudiobookTab()
            ],
          ),
        ),
      ),
    );
  }
}
