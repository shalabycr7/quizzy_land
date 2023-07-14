import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:flutter/cupertino.dart';

class CountDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(
                Icons.timer_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
            TimerCountdown(
              format: CountDownTimerFormat.minutesSeconds,
              enableDescriptions: false,
              colonsTextStyle: TextStyle(color: Colors.white),
              timeTextStyle: TextStyle(
                color: Colors.white,
              ),
              endTime: DateTime.now().add(
                Duration(
                  minutes: 1,
                  seconds: 34,
                ),
              ),
              onEnd: () {
                print("Timer finished");
              },
            ),
          ],
        ),
      ),
    );
  }
}
