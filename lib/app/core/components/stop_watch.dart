import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class CountUpTimerPage extends StatefulWidget {
  CountUpTimerPage({required this.height, super.key});

  double height;

  @override
  _State createState() => _State();
}

class _State extends State<CountUpTimerPage> {
  final _isHours = true;

  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
    onChange: (value) => print('onChange $value'),
    onChangeRawSecond: (value) => print('onChangeRawSecond $value'),
    onChangeRawMinute: (value) => print('onChangeRawMinute $value'),
    onStopped: () {
      print('onStop');
    },
    onEnded: () {
      print('onEnded');
    },
  );

  @override
  void initState() {
    super.initState();
    _stopWatchTimer.rawTime.listen((value) =>
        print('rawTime $value ${StopWatchTimer.getDisplayTime(value)}'));
    _stopWatchTimer.minuteTime.listen((value) => print('minuteTime $value'));
    _stopWatchTimer.secondTime.listen((value) => print('secondTime $value'));
    _stopWatchTimer.records.listen((value) => print('records $value'));
    _stopWatchTimer.fetchStopped
        .listen((value) => print('stopped from stream'));
    _stopWatchTimer.fetchEnded.listen((value) => print('ended from stream'));
    _stopWatchTimer.onStartTimer();

    /// Can be set preset time. This case is "00:01.23".
    // _stopWatchTimer.setPresetTime(mSec: 1234);
  }

  @override
  void dispose() async {
    super.dispose();
    await _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: _stopWatchTimer.rawTime,
      initialData: _stopWatchTimer.rawTime.value,
      builder: (context, snap) {
        final value = snap.data!;
        final displayTime = StopWatchTimer.getDisplayTime(value,
            milliSecond: false, hours: _isHours);
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            displayTime,
            style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}

class CallTimer extends StatelessWidget {
  CallTimer(
      {required this.stopWatchTimer,
      required this.height,
      required this.color,
      super.key});

  Color color;
  double height;
  final StopWatchTimer stopWatchTimer;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: stopWatchTimer.rawTime,
      initialData: stopWatchTimer.rawTime.value,
      builder: (context, snap) {
        final value = snap.data!;
        final displayTime = StopWatchTimer.getDisplayTime(value,
            milliSecond: false, hours: true);
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            displayTime,
            style: TextStyle(
                color: color,
                fontSize: height / 22,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
