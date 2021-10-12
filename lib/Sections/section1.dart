import 'package:flutter/material.dart';

void main() => runApp(Section1());

class Section1 extends StatelessWidget {
  Section1({Key? key}) : super(key: key);

  final mangas = [
  { 'title': 'Manga 1', 'image': 'images/image1.jpeg' ,'imageTitle': 'Том 1, Глава 216'},
  { 'title': 'Manga 2', 'image': 'images/image2.jpeg' ,'imageTitle': 'Том 15, Глава 16' },
  { 'title': 'Manga 3', 'image': 'images/image3.jpg' ,'imageTitle': 'Том 4, Глава 2165' },
  { 'title': 'Manga 4', 'image': 'images/image4.jpg' ,'imageTitle': 'Том 8, Глава 75' },
  { 'title': 'Manga 5', 'image': 'images/image5.jpg' ,'imageTitle': 'Том 1, Глава 1' },
  ];

  final _elementWidth = 100.0;
  final _elementHeight = 160.0;

  Widget _mangaName(title) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Text(title,
          style: TextStyle(fontSize: 14, color: Colors.white),
          textAlign: TextAlign.start),
    );
  }

  Widget _mangaAvatar(avatar, imageTitle) {
    Widget _titleImage() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          avatar,
          height: _elementHeight,
          width: _elementWidth,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget _titleImageShadow() {
      return Container(
        height: _elementHeight,
        width: _elementWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0x00000000),
              const Color(0x00000000),
              const Color(0x00000000),
              const Color(0xCC000000),
            ],
          ),
        ),
      );
    }

    Widget _titleLastChapter() {
      return Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Text(
            imageTitle,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
      );
    }

    return Container(
      width: _elementWidth,
      height: _elementHeight,
      child: Stack(
        children: [
          _titleImage(),
          _titleImageShadow(),
          _titleLastChapter(),
        ],
      ),
    );
  }

  Widget _bigMangaOverview(mangaInfo) {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.blueAccent),
      // ),
      child: SizedBox(
        width: _elementWidth,
        child: Column(
          children: [
            _mangaAvatar(mangaInfo["image"],mangaInfo["imageTitle"]),
            _mangaName(mangaInfo["title"]),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListTile(
            title: Text(
              "Оновлення популярних манг",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 200,
          // width: 500,
          child: Container(
            padding: EdgeInsets.only(left: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: mangas.map((e) => _bigMangaOverview(e)).toList(),
              // [
              //   _bigMangaOverview(),
              //   _bigMangaOverview(),
              //   _bigMangaOverview(),
              //   _bigMangaOverview(),
              //   _bigMangaOverview(),
              //   _bigMangaOverview(),
              //   _bigMangaOverview(),
              // ],
            ),
          ),
        ),
      ],
    );
  }
}
