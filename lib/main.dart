import 'package:flutter/material.dart';
import 'package:flutter_lab_2/Section1/section1.dart';

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
          child: Column(
            children: [
              _mangaAvatar(),
              _mangaName(),
            ],
          ),
        ),
      );
    }

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
        ),
      ],
    );
  }

  Widget _section2() {
    Widget _titleSection2() {
      return Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.only(
            top: 5.0,
            left: 13.0,
          ),
          child: Text(
            "Останні новини",
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }

    Widget _newsList() {
      Widget _news() {
        Widget _line1() {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 5.0,
                left: 13.0,
              ),
              child: Text(
                "Течнічні роботи на сервері 15.16.4098",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          );
        }

        Widget _line2() {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Wrap(
                spacing: 20,
                children: [
                  Wrap(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.account_box,
                        color: Color(0xFF868e96),
                        size: 14,
                      ),
                      Text(
                        "username",
                        style: TextStyle(
                          color: Color(0xFF868e96),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "3 days ago",
                    style: TextStyle(
                      color: Color(0xFF868e96),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Column(children: [
          _line1(),
          _line2(),
        ]);
      }

      return Column(
        children: [
          _news(),
          _news(),
          _news(),
          _news(),
        ],
      );
    }

    Widget _allNews() {
      return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          child: Text(
            "Усі новини >",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          padding: EdgeInsets.only(
            top: 10,
            left: 15.0,
            bottom: 15,
          ),
        ),
      );
    }

    return Column(
      children: [
        _titleSection2(),
        _newsList(),
        _allNews(),
      ],
    );
  }

  Widget _section3() {
    Widget _titleSection3() {
      return Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.only(
            top: 5.0,
            left: 13.0,
          ),
          child: Text(
            "Останні теми обговорень",
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }

    Widget _discutionsList() {
      Widget _news() {
        Widget _line1() {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 5.0,
                left: 13.0,
              ),
              child: Text(
                "Шукаєм хороших клінерів і переладачів.",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          );
        }

        Widget _line2() {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Wrap(
                spacing: 20,
                children: [
                  Wrap(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.account_box,
                        color: Color(0xFF868e96),
                        size: 14,
                      ),
                      Text(
                        "username",
                        style: TextStyle(
                          color: Color(0xFF868e96),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "3 days ago",
                    style: TextStyle(
                      color: Color(0xFF868e96),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Column(children: [
          _line1(),
          _line2(),
        ]);
      }

      return Column(
        children: [
          _news(),
          _news(),
          _news(),
          _news(),
        ],
      );
    }

    Widget _allDiscution() {
      return Row(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Text(
                "Усі теми >",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              padding: EdgeInsets.only(
                top: 10,
                left: 15.0,
                bottom: 15,
              ),
            ),
          ),
          Spacer(),
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(
                      3) // use instead of BorderRadius.all(Radius.circular(20))
                  ),
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.manage_accounts,
                    size: 16,
                  ),
                  Text(" Допомога перекладачам [ 567 ]"),
                ],
              ))
        ],
      );
    }

    return Column(
      children: [
        _titleSection3(),
        _discutionsList(),
        _allDiscution(),
      ],
    );
  }

  Widget _section4() {
    Widget _titleSection3() {
      return Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.only(
            top: 5.0,
            left: 13.0,
          ),
          child: Text(
            "Найпопулярніше останнім часом",
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }

    Widget _discutionsList() {
      Widget _news() {
        Widget _line1() {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 5.0,
                left: 13.0,
              ),
              child: Text(
                "Яку мангу варто прочитати?",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          );
        }

        Widget _line2() {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Wrap(
                spacing: 20,
                children: [
                  Wrap(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.account_box,
                        color: Color(0xFF868e96),
                        size: 14,
                      ),
                      Text(
                        "username",
                        style: TextStyle(
                          color: Color(0xFF868e96),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "3 days ago",
                    style: TextStyle(
                      color: Color(0xFF868e96),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return Column(children: [
          _line1(),
          _line2(),
        ]);
      }

      return Column(
        children: [
          _news(),
          _news(),
          _news(),
          _news(),
        ],
      );
    }

    Widget _allDiscution() {
      return Row(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Text(
                "Усе популярне >",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              padding: EdgeInsets.only(
                top: 10,
                left: 15.0,
                bottom: 15,
              ),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        _titleSection3(),
        _discutionsList(),
        _allDiscution(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Color(0xFF1C1C1E),
          bottomOpacity: 0.0,
          elevation: 0.0,
          leading: IconButton(
              onPressed: null, icon: Icon(Icons.menu, color: Colors.white)),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(Icons.mode_night_outlined, color: Colors.white)),
            IconButton(
                onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
          ],
        ),
      ),
      backgroundColor: Color(0xFF141414),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Color(0xFF1C1C1E),
            child: _section1(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFF1C1C1E),
            // height: 250,
            child: _section2(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFF1C1C1E),
            child: _section3(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFF1C1C1E),
            child: _section4(),
          ),
        ],
      ),
    );
  }
}
