import 'package:flutter/material.dart';
import 'package:switchtab/page1.dart';
import 'package:switchtab/page2.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 60, right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text('page1')),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text('page2')),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: pages[index],
          )
        ],
      ),
    );
  }
}

List<Widget> pages = [Page1(), Page2()];
