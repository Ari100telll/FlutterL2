import 'package:flutter/material.dart';
import 'Sections/section1.dart';
import 'Sections/section2.dart';
import 'Sections/section3.dart';
import 'Sections/section4.dart';

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
            child: Section1(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFF1C1C1E),
            // height: 250,
            child: Section2(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFF1C1C1E),
            child: Section3(),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFF1C1C1E),
            child: Section4(),
          ),
        ],
      ),
    );
  }
}
