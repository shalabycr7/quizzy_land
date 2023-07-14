import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class CountDown extends StatelessWidget {
  const CountDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.white,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.timer_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          TimerCountdown(
            format: CountDownTimerFormat.minutesSeconds,
            enableDescriptions: false,
            colonsTextStyle: const TextStyle(color: Colors.white),
            timeTextStyle: const TextStyle(
              color: Colors.white,
            ),
            endTime: DateTime.now().add(
              const Duration(
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
    );
  }
}
