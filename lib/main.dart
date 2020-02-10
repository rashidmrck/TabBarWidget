import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      title: 'Tab Widget',
      home: TabHome(),
    );
  }
}

class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.train),
              text: "rgdfg",
            ),
            Tab(
              icon: Icon(Icons.stay_current_landscape),
              text: 'landscape',
            ),
            Tab(
              icon: Icon(Icons.directions_car),
              text: "rgdfg",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: Center(
              child: Icon(
                Icons.store,
                size: 26,
                color: Colors.orange,
              ),
            ),
          ),
          Container(
            child: Center(
              child: Icon(
                Icons.subway,
                size: 26,
                color: Colors.blue,
              ),
            ),
          ),
           Container(
            child: Center(
              child: Icon(
                Icons.subway,
                size: 26,
                color: Colors.blue,
              ),
            ),
          ),
        ]),
        bottomNavigationBar: Material(
          child: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.train),
              text: "rgdfg",
            ),
            Tab(
              icon: Icon(Icons.stay_current_landscape),
              text: 'landscape',
            ),
            Tab(
              icon: Icon(Icons.directions_car),
              text: "rgdfg",
            ),
          ]),
        ),
      ),
    );
  }
}
