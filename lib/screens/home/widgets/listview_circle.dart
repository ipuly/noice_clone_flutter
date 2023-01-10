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
      constraints: BoxConstraints(maxWidth: 150),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Stack(
                children: [
                  Image.asset(
                    imgPodcast,
                    width: 150,
                    height: 130,
                    fit: BoxFit.fill,
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
                Text(durationPodcast.toString() + " menit"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
