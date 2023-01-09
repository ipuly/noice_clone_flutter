import 'package:assignment7_noice_app/screens/home/widgets/section_title.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15.0,
              ),
              SectionTitle(title: "Channel"),
            ],
          ),
        ),
      ),
    );
  }
}
