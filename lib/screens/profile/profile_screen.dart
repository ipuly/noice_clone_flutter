// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(
                maxHeight: 110.0,
              ),
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[800],
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage("assets/images/logo.jpg"),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),
                        ),
                        Text(
                          "Ipuly",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Colors.blueGrey[900],
                      child: const Icon(
                        Icons.edit,
                        size: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20.0,
                right: 20.0,
                bottom: 0.0,
              ),
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            Icon(Icons.people_alt_outlined),
                            Text(
                              "13K",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Icon(Icons.people_alt_outlined),
                            Text(
                              "2K",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            Icon(Icons.post_add),
                            Text(
                              "2K",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Builder(
                builder: (context) {
                  List items = [
                    {
                      "label": "Addresses",
                      "icon": Icons.pin_drop,
                      "on_tap": () {}
                    },
                    {
                      "label": "Referral code",
                      "icon": Icons.code,
                      "on_tap": () {}
                    },
                    {
                      "label": "Privacy Policy",
                      "icon": Icons.info,
                      "on_tap": () {}
                    },
                    {"label": "TOS", "icon": Icons.warning, "on_tap": () {}}
                  ];

                  return InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 12.0,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: ListView.builder(
                        itemCount: items.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = items[index];
                          return InkWell(
                            onTap: () {
                              if (item["on_tap"] != null) {
                                item["on_tap"]!();
                              }
                            },
                            child: SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: ListTile(
                                  leading: Icon(
                                    item["icon"],
                                    size: 30.0,
                                  ),
                                  title: Text(item["label"]),
                                  trailing: const Icon(
                                    Icons.chevron_right,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}