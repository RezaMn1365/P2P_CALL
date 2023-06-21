import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderHorizontal extends StatefulWidget {
  SliderHorizontal(
      {required this.max,
      required this.min,
      required this.selection,
      super.key});
  double min = 0;
  double max = 9;
  SfRangeValues values = const SfRangeValues(0.0, 9.0);
  Function selection;

  @override
  State<SliderHorizontal> createState() => _SliderHorizontalState();
}

class _SliderHorizontalState extends State<SliderHorizontal>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SfRangeSlider(
      dragMode: SliderDragMode.both,
      enableTooltip: true,
      stepSize: 1,
      onChangeEnd: (value) => widget.selection(value),
      min: widget.min,
      max: widget.max,
      values: widget.values,
      interval: 1,
      showTicks: true,
      showLabels: true,
      onChanged: (SfRangeValues value) {
        setState(() {
          widget.values = value;
          // widget.selection(value);
        });
      },
    );
  }
}
