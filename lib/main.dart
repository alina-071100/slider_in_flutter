import 'package:flutter/material.dart';
import 'package:flutter_application/slider_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Sliders'),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 50,
            ),
            MultiSliderWidget(),
          ],
        ),
      ),
    );
  }
}
