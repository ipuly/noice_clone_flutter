// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:assignment7_noice_app/data/list.dart';
import 'package:assignment7_noice_app/screens/collections/widgets/listview_menu.dart';
import 'package:assignment7_noice_app/screens/home/widgets/section_title.dart';
import 'package:flutter/material.dart';

class CollectionsScreen extends StatefulWidget {
  const CollectionsScreen({Key? key}) : super(key: key);

  @override
  State<CollectionsScreen> createState() => _CollectionsScreenState();
}

class _CollectionsScreenState extends State<CollectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              SectionTitle(
                title: "Koleksi",
              ),
              const SizedBox(
                height: 20.0,
              ),
              ListViewMenu(DataMenu: DataMenu.menuPlaylist),
              SectionTitle(
                title: "Playlist",
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
