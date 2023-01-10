import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PodcastData {
  static const List<Map<String, dynamic>> playlistPodcast = [
    {
      "podcast_title": "Podcast 1",
      "img_podcast": "assets/images/square_1.png",
      "account_name": "Account Podcast",
      "duration_podcast": 14,
    },
    {
      "podcast_title": "Podcast 2",
      "img_podcast": "assets/images/square_2.png",
      "account_name": "Account Podcast",
      "duration_podcast": 13,
    },
    {
      "podcast_title": "Podcast 3",
      "img_podcast": "assets/images/square_3.png",
      "account_name": "Account Podcast",
      "duration_podcast": 13,
    },
    {
      "podcast_title": "Podcast 4",
      "img_podcast": "assets/images/square_4.png",
      "account_name": "Account Podcast",
      "duration_podcast": 13,
    },
  ];
  static const List<Map<String, dynamic>> rectanglePodcast = [
    {
      "podcast_title": "Podcast 1",
      "img_podcast": "assets/images/rectangle_1.png",
      "account_name": "Account Podcast",
      "duration_podcast": 14,
    },
    {
      "podcast_title": "Podcast 2",
      "img_podcast": "assets/images/rectangle_2.png",
      "account_name": "Account Podcast",
      "duration_podcast": 13,
    },
    {
      "podcast_title": "Podcast 3",
      "img_podcast": "assets/images/rectangle_3.png",
      "account_name": "Account Podcast",
      "duration_podcast": 13,
    },
    {
      "podcast_title": "Podcast 4",
      "img_podcast": "assets/images/rectangle_4.png",
      "account_name": "Account Podcast",
      "duration_podcast": 13,
    },
  ];
}

class DataMenu {
  static const List<Map<String, dynamic>> menuPlaylist = [
    {
      "nama_menu": "History",
      "logo_icon": Icons.add,
    },
    {
      "nama_menu": "Konten disukai",
      "logo_icon": Icons.thumb_up_alt_outlined,
    },
    {
      "nama_menu": "Download",
      "logo_icon": Icons.download_done_outlined,
    },
    {
      "nama_menu": "Podcast",
      "logo_icon": Icons.podcasts,
    },
    {
      "nama_menu": "Radio",
      "logo_icon": Icons.radio_outlined,
    },
    {
      "nama_menu": "Audiobook",
      "logo_icon": Icons.usb_outlined,
    },
    {
      "nama_menu": "Audioseries",
      "logo_icon": Icons.headphones_outlined,
    },
  ];
}

class MenuSearch {
  static const List<Map<String, dynamic>> menuTopChart = [
    {
      "nama_menu": "Top Ranking",
      "logo_icon": Icons.bar_chart,
      "color_card": Colors.blue,
    },
    {
      "nama_menu": "Trending Episode",
      "logo_icon": Icons.show_chart,
      "color_card": Colors.purple,
    },
  ];
  static const List<Map<String, dynamic>> menuJelajah = [
    {
      "nama_menu": "Podcast",
      "logo_icon": Icons.podcasts,
      "color_card": Colors.red,
    },
    {
      "nama_menu": "Audioseries",
      "logo_icon": Icons.headphones_outlined,
      "color_card": Colors.pink,
    },
    {
      "nama_menu": "Radio",
      "logo_icon": Icons.radio,
      "color_card": Colors.blueAccent,
    },
    {
      "nama_menu": "Live",
      "logo_icon": Icons.record_voice_over_outlined,
      "color_card": Colors.green,
    },
    {
      "nama_menu": "Audiobook",
      "logo_icon": Icons.audiotrack,
      "color_card": Colors.deepPurple,
    },
  ];
}
