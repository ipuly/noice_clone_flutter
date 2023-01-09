import 'package:flutter/material.dart';

class ListViewCircle extends StatefulWidget {
  final List<Map<String, dynamic>> podcastData;
  const ListViewCircle({Key? key, required this.podcastData}) : super(key: key);

  @override
  _ListViewCircleState createState() => _ListViewCircleState();
}

class _ListViewCircleState extends State<ListViewCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: widget.podcastData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return PodcastItem(
            imgPodcast: widget.podcastData[index]["img_podcast"],
            podcastName: widget.podcastData[index]["podcast_title"],
            accountName: widget.podcastData[index]["account_name"],
          );
        },
      ),
    );
  }
}

class PodcastItem extends StatelessWidget {
  final String imgPodcast;
  final String podcastName;
  final String accountName;
  const PodcastItem({
    Key? key,
    required this.imgPodcast,
    required this.podcastName,
    required this.accountName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 135),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.all(
                Radius.circular(100.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Stack(
                  children: [
                    Image.asset(
                      imgPodcast,
                      width: 130,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(accountName.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
