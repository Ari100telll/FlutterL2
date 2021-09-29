import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _section1() {
    final _elementWidth = 100.0;
    final _elementHeight = 160.0;

    Widget _mangaName() {
      return Container(
        margin: EdgeInsets.all(5.0),
        child: Text("Manga 1",
            style: TextStyle(fontSize: 14, color: Colors.white),
            textAlign: TextAlign.start),
      );
    }

    Widget _mangaAvatar() {
      Widget _titleImage() {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'images/image2.jpeg',
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
              "Том 1, Глава 216",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
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

    Widget _bigMangaOverview() {
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
          child: ListView(
            children: [
              _mangaAvatar(),
              _mangaName(),
            ],
          ),
        ),
      );
    }

    return ListView(
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _bigMangaOverview(),
              _bigMangaOverview(),
              _bigMangaOverview(),
              _bigMangaOverview(),
              _bigMangaOverview(),
              _bigMangaOverview(),
              _bigMangaOverview(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Color(0xFF343434),
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
              onPressed: null, icon: Icon(Icons.menu, color: Colors.white)),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.monochrome_photos, color: Colors.white)),
            IconButton(
                onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
          ],
        ),
      ),
      backgroundColor: Color(0xFF343434),
      body: Column(
        children: [
          Expanded(child: _section1()),
        ],
      ),
    );
  }
}
