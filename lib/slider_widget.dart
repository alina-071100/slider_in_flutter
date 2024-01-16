import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final double minValue;
  final double maxValue;
  final Stream<double>? stream;
  final ValueChanged<double>? onChanged;
  final Duration? delay;

  const SliderWidget({
    required this.minValue,
    required this.maxValue,
    this.stream,
    this.onChanged,
    this.delay,
  });

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  late double _sliderValue;

  @override
  void initState() {
    super.initState();
    _sliderValue = widget.minValue;
    widget.stream?.listen((value) {
      Future.delayed(widget.delay ?? Duration.zero, () {
        setState(() {
          _sliderValue = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: widget.minValue,
      max: widget.maxValue,
      value: _sliderValue,
      onChanged: widget.onChanged,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
