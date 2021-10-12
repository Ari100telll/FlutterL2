import 'package:flutter/material.dart';

void main() => runApp(Section2());

class Section2 extends StatelessWidget {
  Section2({ Key? key }) : super(key: key);

  final news = [
    {'newTitle': "Течнічні роботи на сервері 15.16.4098", 'username': 'Ari100tel', 'data': '1 days ago',},
    {'newTitle': "Течнічні роботи на сервері 10.16.4098", 'username': 'Ari100tel', 'data': '3 days ago',},
    {'newTitle': "Течнічні роботи на сервері 6.16.4098", 'username': 'Ari100tel', 'data': '4 days ago',},
    {'newTitle': "Течнічні роботи на сервері 3.16.4098", 'username': 'Ari100tel', 'data': '7 days ago',},
    {'newTitle': "Прадам гараж +380967872233", 'username': 'SerGay', 'data': '10 days ago',},
  ];
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
      Widget _news(newsInfo) {
        Widget _line1(newTitle) {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 5.0,
                left: 13.0,
              ),
              child: Text(
                newTitle,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          );
        }

        Widget _line2(username, data) {
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
                        username,
                        style: TextStyle(
                          color: Color(0xFF868e96),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    data,
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
          _line1(newsInfo['newTitle']),
          _line2(newsInfo['username'],newsInfo['data']),
        ]);
      }

      return Column(
        children: news.map((e) => _news(e)).toList()
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _titleSection2(),
        _newsList(),
        _allNews(),
      ],
    );
  }
}