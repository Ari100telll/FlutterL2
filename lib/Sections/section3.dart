import 'package:flutter/material.dart';

void main() => runApp(Section3());

class Section3 extends StatelessWidget {
  Section3({ Key? key }) : super(key: key);

 final news = [
    {'newTitle': "Шукаєм хороших клінерів ", 'username': 'Ari100tel', 'data': '1 days ago',},
    {'newTitle': "Шукаєм хороших переладачів", 'username': '3.14fagor', 'data': '3 days ago',},
    {'newTitle': "Шукаєм людей що знають коінгліш", 'username': 'UwU', 'data': '4 days ago',},
    {'newTitle': "Шукаєм хороших клінерів і переладачів.", 'username': 'Ari100tel', 'data': '7 days ago',},
    {'newTitle': "Куплю гараж +380967873333", 'username': 'GaySer', 'data': '10 days ago',},
  ];

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
      Widget _news(newInfo) {
        Widget _line1(title) {
          return Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                top: 5.0,
                left: 13.0,
              ),
              child: Text(
                title,
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
          _line1(newInfo['newTitle']),
          _line2(newInfo['username'],newInfo['data']),
        ]);
      }

      return Column(
        children: news.map((e) => _news(e)).toList()
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _titleSection3(),
        _discutionsList(),
        _allDiscution(),
      ],
    );
  }
}