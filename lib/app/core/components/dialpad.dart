import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

import 'package:flutter_dtmf/dtmf.dart';

class DialPad extends StatefulWidget {
  final ValueSetter<String>? makeCall;
  final ValueSetter<String>? makeVideoCall;
  final ValueSetter<String>? keyPressed;
  final bool? hideDialButton;
  final bool? hideSubtitle;
  // buttonColor is the color of the button on the dial pad. defaults to Colors.gray
  final Color? buttonColor;
  final Color? buttonTextColor;
  final Color? dialButtonColor;
  final Color? dialButtonIconColor;
  final IconData? dialButtonIcon;
  final Color? backspaceButtonIconColor;
  final Color? dialOutputTextColor;
  // outputMask is the mask applied to the output text. Defaults to (000) 000-0000
  final String? outputMask;
  final bool? enableDtmf;

  DialPad(
      {this.makeVideoCall,
      this.makeCall,
      this.keyPressed,
      this.hideDialButton,
      this.hideSubtitle = false,
      this.outputMask,
      this.buttonColor,
      this.buttonTextColor,
      this.dialButtonColor,
      this.dialButtonIconColor,
      this.dialButtonIcon,
      this.dialOutputTextColor,
      this.backspaceButtonIconColor,
      this.enableDtmf});

  @override
  _DialPadState createState() => _DialPadState();
}

class _DialPadState extends State<DialPad> {
  MaskedTextController? textEditingController;
  var _value = "";
  var mainTitle = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"];
  var subTitle = [
    "",
    "ABC",
    "DEF",
    "GHI",
    "JKL",
    "MNO",
    "PQRS",
    "TUV",
    "WXYZ",
    null,
    "+",
    null
  ];

  @override
  void initState() {
    textEditingController = MaskedTextController(
        mask: widget.outputMask != null ? widget.outputMask : '(000) 000-0000');
    super.initState();
  }

  _setText(String? value) async {
    if ((widget.enableDtmf == null || widget.enableDtmf!) && value != null)
      Dtmf.playTone(digits: value.trim(), samplingRate: 8000, durationMs: 160);

    if (widget.keyPressed != null) widget.keyPressed!(value!);

    setState(() {
      _value += value!;
      textEditingController!.text = _value;
    });
  }

  List<Widget> _getDialerButtons() {
    var rows = <Widget>[];
    var items = <Widget>[];

    for (var i = 0; i < mainTitle.length; i++) {
      if (i % 3 == 0 && i > 0) {
        rows.add(Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: items));
        rows.add(SizedBox(
          height: MediaQuery.of(context).size.height * 0.09852217 / 8,
        ));
        items = <Widget>[];
      }

      items.add(DialButton(
        title: mainTitle[i],
        subtitle: subTitle[i],
        hideSubtitle: widget.hideSubtitle!,
        color: widget.buttonColor,
        textColor: widget.buttonTextColor,
        onTap: _setText,
      ));
    }
    //To Do: Fix this workaround for last row
    rows.add(
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: items));
    rows.add(SizedBox(
      height: MediaQuery.of(context).size.height * 0.09852217 / 8,
    ));

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var sizeFactor = screenSize.height * 0.09852217;

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            readOnly: true,
            style: TextStyle(
                color: widget.dialOutputTextColor ?? Colors.black,
                fontSize: sizeFactor / 2),
            textAlign: TextAlign.center,
            decoration: InputDecoration(border: InputBorder.none),
            controller: textEditingController,
          ),
        ),
        ..._getDialerButtons(),
        SizedBox(
          height: sizeFactor / 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: widget.hideDialButton != null && widget.hideDialButton!
                  ? Container()
                  : Center(
                      child: DialButton(
                        icon: widget.dialButtonIcon != null
                            ? widget.dialButtonIcon
                            : Icons.phone,
                        color: widget.dialButtonColor != null
                            ? widget.dialButtonColor!
                            : Colors.green,
                        hideSubtitle: widget.hideSubtitle!,
                        onTap: (value) {
                          widget.makeCall!(_value);
                        },
                      ),
                    ),
            ),
            Expanded(
              child: widget.hideDialButton != null && widget.hideDialButton!
                  ? Container()
                  : Center(
                      child: DialButton(
                        icon: widget.dialButtonIcon != null
                            ? widget.dialButtonIcon
                            : Icons.video_call,
                        color: widget.dialButtonColor != null
                            ? widget.dialButtonColor!
                            : Colors.green,
                        hideSubtitle: widget.hideSubtitle!,
                        onTap: (value) {
                          widget.makeVideoCall!(_value);
                        },
                      ),
                    ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: screenSize.height * 0.03685504),
                child: IconButton(
                  icon: Icon(
                    Icons.backspace,
                    size: sizeFactor / 2,
                    color: _value.length > 0
                        ? (widget.backspaceButtonIconColor != null
                            ? widget.backspaceButtonIconColor
                            : Colors.white24)
                        : Colors.white24,
                  ),
                  onPressed: _value.length == 0
                      ? null
                      : () {
                          if (_value.length > 0) {
                            setState(() {
                              _value = _value.substring(0, _value.length - 1);
                              textEditingController!.text = _value;
                            });
                          }
                        },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class DialButton extends StatefulWidget {
  final Key? key;
  final String? title;
  final String? subtitle;
  final bool hideSubtitle;
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final Color? iconColor;
  final ValueSetter<String?>? onTap;
  final bool? shouldAnimate;
  DialButton(
      {this.key,
      this.title,
      this.subtitle,
      this.hideSubtitle = false,
      this.color,
      this.textColor,
      this.icon,
      this.iconColor,
      this.shouldAnimate,
      this.onTap});

  @override
  _DialButtonState createState() => _DialButtonState();
}

class _DialButtonState extends State<DialButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween;
  Timer? _timer;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _colorTween = ColorTween(
            begin: widget.color != null ? widget.color : Colors.white24,
            end: Colors.white)
        .animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
    if ((widget.shouldAnimate == null || widget.shouldAnimate!) &&
        _timer != null) _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var sizeFactor = screenSize.height * 0.085852217;

    return GestureDetector(
      onTap: () {
        if (this.widget.onTap != null) this.widget.onTap!(widget.title);

        if (widget.shouldAnimate == null || widget.shouldAnimate!) {
          if (_animationController.status == AnimationStatus.completed) {
            _animationController.reverse();
          } else {
            _animationController.forward();
            _timer = Timer(const Duration(milliseconds: 200), () {
              setState(() {
                _animationController.reverse();
              });
            });
          }
        }
      },
      child: ClipOval(
        child: AnimatedBuilder(
          animation: _colorTween,
          builder: (context, child) => Container(
            color: _colorTween.value,
            height: sizeFactor,
            width: sizeFactor,
            child: Center(
                child: widget.icon == null
                    ? widget.subtitle != null
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(
                                height: sizeFactor / 8,
                              ),
                              Text(
                                widget.title!,
                                style: TextStyle(
                                    fontSize: sizeFactor / 2,
                                    color: widget.textColor != null
                                        ? widget.textColor
                                        : Colors.black),
                              ),
                              if (!widget.hideSubtitle)
                                Text(widget.subtitle!,
                                    style: TextStyle(
                                        color: widget.textColor != null
                                            ? widget.textColor
                                            : Colors.black))
                            ],
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                                top: widget.title == "*" ? 10 : 0),
                            child: Text(
                              widget.title!,
                              style: TextStyle(
                                  fontSize: widget.title == "*" &&
                                          widget.subtitle == null
                                      ? screenSize.height * 0.0862069
                                      : sizeFactor / 2,
                                  color: widget.textColor != null
                                      ? widget.textColor
                                      : Colors.black),
                            ),
                          )
                    : Icon(widget.icon,
                        size: sizeFactor / 2,
                        color: widget.iconColor != null
                            ? widget.iconColor
                            : Colors.white)),
          ),
        ),
      ),
    );
  }
}

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onVoiceSubmit;
  final Function onVideoSubmit;
  final Size size;

  const NumPad({
    Key? key,
    this.buttonSize = 70,
    this.buttonColor = Colors.transparent,
    this.iconColor = Colors.amber,
    required this.size,
    required this.delete,
    required this.onVideoSubmit,
    required this.onVoiceSubmit,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = size.height / 100;
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(left: height / 4, right: height / 4),
      child: Column(
        children: [
          SizedBox(height: height),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // implement the number keys (from 0 to 9) with the NumberButton widget
            // the NumberButton widget is defined in the bottom of this file
            children: [
              NumberButton(
                number: 1,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 2,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 3,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          SizedBox(height: height),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 5,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 6,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          SizedBox(height: height),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 8,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              NumberButton(
                number: 9,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          SizedBox(height: height),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number
              // IconButton(
              //   onPressed: () => delete(),
              //   icon: Icon(
              //     Icons.backspace,
              //     color: iconColor,
              //   ),
              //   iconSize: buttonSize,
              // ),

              NumberButton(
                number: 0,
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),

              // this button is used to submit the entered value
              // IconButton(
              //   onPressed: () => onSubmit(),
              //   icon: Icon(
              //     Icons.done_rounded,
              //     color: iconColor,
              //   ),
              //   iconSize: buttonSize,
              // ),
            ],
          ),
          SizedBox(height: height / 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number
              // IconButton(
              //   onPressed: () => delete(),
              //   icon: Icon(
              //     Icons.call_to_action,
              //     color: iconColor,
              //   ),
              //   iconSize: buttonSize,
              // ),
              // // this button is used to submit the entered value
              // IconButton(
              //   onPressed: () => onSubmit(),
              //   icon: Icon(
              //     Icons.call,
              //     color: iconColor,
              //   ),
              //   iconSize: buttonSize,
              // ),
              GestureDetector(
                onTap: () => onVideoSubmit(),
                child: Container(
                  height: buttonSize,
                  width: buttonSize,
                  child: Center(
                    child: Image.asset('assets/video_green.png'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => onVoiceSubmit(),
                child: Container(
                  height: buttonSize,
                  width: buttonSize,
                  child: Center(
                    child: Image.asset('assets/green.png'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// define NumberButton widget
// its shape is round
class NumberButton extends StatelessWidget {
  final int number;
  final double size;
  final Color color;
  final TextEditingController controller;
  var subTitle = [
    '+',
    "",
    "ABC",
    "DEF",
    "GHI",
    "JKL",
    "MNO",
    "PQRS",
    "TUV",
    "WXYZ",
    '',
    "+",
    ''
  ];

  NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.color,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child:
          // ElevatedButton(
          //   style:
          //   ElevatedButton.styleFrom(
          //     backgroundColor: color,
          //     shape: RoundedRectangleBorder(

          //         // borderRadius: BorderRadius.circular(size / 2),
          //         ),
          //   ),
          TextButton(
        onPressed: () async {
          try {
            var result = await Dtmf.playTone(
                digits: number.toString(),
                samplingRate: 80000.0,
                durationMs: 160);
          } catch (e) {
            print('DT: $e');
          }
          controller.text += number.toString();
        },
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  number.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.indigoAccent,
                      fontSize: size * 0.5),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  subTitle[number],
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                      fontSize: size * 0.2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
