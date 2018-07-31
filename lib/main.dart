import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_projects/page_reveal.dart';
import 'package:flutter_projects/pager_indicator.dart';
import 'package:flutter_projects/pages.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Page Reveal',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Page(
            viewModel: pages[0],
            percentVisible: 1.0,
          ),
          PageReveal(
            revealPercent: 0.55,
            child: Page(
              viewModel: pages[1],
              percentVisible: 1.0,
            ),
          ),
          new PagerIndicator(

          )
        ],
      ),
    );
  }
}

