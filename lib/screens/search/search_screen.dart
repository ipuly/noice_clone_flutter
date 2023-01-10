// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:assignment7_noice_app/data/list.dart';
import 'package:assignment7_noice_app/screens/home/widgets/section_title.dart';
import 'package:assignment7_noice_app/screens/search/widget/chartlist_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
              SectionTitle(title: "Top Chart"),
              const SizedBox(
                height: 20.0,
              ),
              CardListChart(MenuSearch: MenuSearch.menuTopChart),
              const SizedBox(
                height: 20.0,
              ),
              SectionTitle(title: "Jelajah"),
              const SizedBox(
                height: 20.0,
              ),
              CardListChart(MenuSearch: MenuSearch.menuJelajah),
            ],
          ),
        ),
      ),
    );
  }
}
