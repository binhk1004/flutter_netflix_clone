import 'package:flutter/material.dart';
import 'package:flutter_netflix_clone/screen/home_screen.dart';
import 'package:flutter_netflix_clone/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'netflix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          brightness: Brightness.dark,
          primary: Colors.black,
          //primaryColor 대체
          secondary: Colors.white,
          //accentColor 대체
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            //NeverScrollableScrollPhysics 해당 method는 손가락으로
            //scroll 하는 것을 막아준다.
            children: [
              HomeScreen(),
              Container(child: const Center(child: Text('search'))),
              Container(child: const Center(child: Text('save'))),
              Container(child: const Center(child: Text('more'))),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
