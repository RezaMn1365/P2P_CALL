import 'package:flutter/material.dart';
import 'package:screen_recorder_device/main.dart';

class CircularButton extends StatelessWidget {
  bool enabled;
  bool loading;
  Widget buttonWidget;
  Color color;
  final VoidCallback onPressed;
  CircularButton(
      {required this.enabled,
      required this.color,
      required this.loading,
      required this.buttonWidget,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: ElevatedButton(
          style: ButtonStyle(
            enableFeedback: true,
            shape: MaterialStateProperty.all(const CircleBorder()),
            padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
            backgroundColor:
                MaterialStateProperty.all(color), // <-- Button color
            overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.white30;
              } // <-- Splash color
            }),
          ),
          onPressed: enabled ? onPressed : null,
          child: loading ? CircularProgressIndicator() : buttonWidget),
    );
  }
}

class RectangelButton extends StatelessWidget {
  bool enabled;
  bool loading;
  Widget buttonWidget;
  Color color;
  final VoidCallback onPressed;
  RectangelButton(
      {required this.enabled,
      required this.color,
      required this.loading,
      required this.buttonWidget,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ElevatedButton(
          style: ButtonStyle(
            foregroundColor:
                const MaterialStatePropertyAll<Color>(Colors.white),

            enableFeedback: true,
            shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
            backgroundColor: MaterialStateProperty.all(
              color,
            ), // <-- Button color
            overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black12;
              } // <-- Splash color
            }),
          ),
          onPressed: enabled ? onPressed : null,
          child: loading ? const CircularProgressIndicator() : buttonWidget),
    );
  }
}
