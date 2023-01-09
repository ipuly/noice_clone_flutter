import 'package:flutter/material.dart';

class ListViewRounded extends StatefulWidget {
  final List<Map<String, dynamic>> podcastData;
  const ListViewRounded({Key? key, required this.podcastData})
      : super(key: key);

  @override
  _ListViewRoundedState createState() => _ListViewRoundedState();
}

class _ListViewRoundedState extends State<ListViewRounded> {
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
              durationPodcast: widget.podcastData[index]["duration_podcast"],
            );
          }),
    );
  }
}

class PodcastItem extends StatelessWidget {
  final String imgPodcast;
  final String podcastName;
  final String accountName;
  final int durationPodcast;
  const PodcastItem(
      {Key? key,
      required this.imgPodcast,
      required this.podcastName,
      required this.accountName,
      required this.durationPodcast})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 135),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(
                podcastName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(accountName.toString()),
                Text(durationPodcast.toString() + "menit"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
