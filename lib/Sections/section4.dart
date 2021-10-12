import 'package:flutter/material.dart';

void main() => runApp(Section4());

class Section4 extends StatelessWidget {
  Section4({Key? key}) : super(key: key);

   final discutions = [
    {'newDiscution': "Яку мангу варто прочитати?", 'username': 'Ari100tel', 'data': '1 days ago',},
    {'newDiscution': "Яку мангу не варто прочитати?", 'username': '3.14fagor', 'data': '3 days ago',},
    {'newDiscution': "Яку не мангу варто прочитати?", 'username': 'UwU', 'data': '4 days ago',},
    {'newDiscution': "Не прочитати не варто не мангу не яку?", 'username': 'Ari100tel', 'data': '7 days ago',},
    {'newDiscution': "Я гараж +380967876767", 'username': 'SerAndGay', 'data': '10 days ago',},
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
          "Найпопулярніше останнім часом",
          textAlign: TextAlign.end,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget _discutionsList() {
    Widget _news(discutionInfo) {
      Widget _line1(discutionTitle) {
        return Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: EdgeInsets.only(
              top: 5.0,
              left: 13.0,
            ),
            child: Text(
              discutionTitle,
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
        _line1(discutionInfo['newDiscution']),
        _line2(discutionInfo['username'],discutionInfo['data']),
      ]);
    }

    return Column(
      children: discutions.map((e) => _news(e)).toList()
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
