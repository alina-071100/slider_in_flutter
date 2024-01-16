import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/slider_widget.dart';

class MultiSliderWidget extends StatefulWidget {
  const MultiSliderWidget({super.key});

  @override
  _MultiSliderWidgetState createState() => _MultiSliderWidgetState();
}

class _MultiSliderWidgetState extends State<MultiSliderWidget> {
  final minValue = 0.0;
  final maxValue = 100.0;

  final _sliderStreamController = StreamController<double>.broadcast();

  Stream<double> get sliderStream => _sliderStreamController.stream;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderWidget(
          minValue: minValue,
          maxValue: maxValue,
          stream: sliderStream,
          onChanged: (value) {
            _sliderStreamController.add(value);
          },
        ),
        SliderWidget(
          minValue: minValue,
          maxValue: maxValue,
          stream: sliderStream,
          delay: const Duration(milliseconds: 400),
        ),
        SliderWidget(
          minValue: minValue,
          maxValue: maxValue,
          stream: sliderStream,
          delay: const Duration(milliseconds: 800),
        ),
        SliderWidget(
          minValue: minValue,
          maxValue: maxValue,
          stream: sliderStream,
          delay: const Duration(milliseconds: 1000),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _sliderStreamController.close();
    super.dispose();
  }
}
